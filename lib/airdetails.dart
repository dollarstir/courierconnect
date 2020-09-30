import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './api.dart';

class AirDet extends StatefulWidget {
  final Map data;
  AirDet(this.data);
  @override
  State<StatefulWidget> createState() {
    return _AirDetState();
  }
}

class _AirDetState extends State<AirDet> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Details"),
      ),
      body: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "${widget.data['FullName']}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text("${widget.data['Email']}"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Posted on : ${widget.data['Origin']}"),
                  ],
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
