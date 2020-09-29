import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './api.dart';

class Newsdata {
  int newsID;
  String newsTitle;
  String newsContent;
  String newsDate;

  Newsdata({this.newsID, this.newsTitle, this.newsContent, this.newsDate});

  factory Newsdata.fromJson(Map<String, dynamic> json) {
    return Newsdata(
        newsID: json['NewsId'],
        newsTitle: json['Title'],
        newsContent: json['News'],
        newsDate: json['RegDate']);
  }
}

class Newsdetails extends StatefulWidget {
  final String idHolder;
  Newsdetails(this.idHolder);
  @override
  State<StatefulWidget> createState() {
    return _NewsdetailsState(this.idHolder);
  }
}

class _NewsdetailsState extends State<Newsdetails> {
  final String idHolder;

  _NewsdetailsState(this.idHolder);

  var url = 'https://courierconnectgh.com/api/newsdetail.php';

  Future<List<Newsdata>> fetchStudent() async {
    var data = {'id': int.parse(idHolder)};

    var response = await http.post(url, body: json.encode(data));

    if (response.statusCode == 200) {
      print(response.statusCode);

      final items = json.decode(response.body).cast<Map<String, dynamic>>();

      List<Newsdata> studentList = items.map<Newsdata>((json) {
        return Newsdata.fromJson(json);
      }).toList();

      return studentList;
    } else {
      throw Exception('Failed to load data from Server.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Details"),
      ),
      body: FutureBuilder<List<Newsdata>>(
        future: fetchStudent(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());

          return ListView(
            children: snapshot.data
                .map((data) => Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            print(data.newsTitle);
                          },
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Card(
                                    elevation: 10,
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Text(
                                            data.newsTitle.toUpperCase(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),

                                        
                                        ),
                                        SizedBox(height: 10),
                                        Center(
                                          child: Text(data.newsContent),
                                        ),
                                        SizedBox(height: 10,),
                                        Text("Posted on :" + data.newsDate),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                        )
                      ],
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
