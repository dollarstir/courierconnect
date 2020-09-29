import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './api.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class PF extends StatefulWidget {
  // name({Key key}) : super(key: key);

  PFState createState() => PFState();
}

class PFState extends State<PF> {

  
  @override
  Widget build(BuildContext context) {

    var box = Hive.box('cbox');

// box.put('name', 'David');

    var hisname = box.get('username');
    var hismail = box.get('usermail');
    var hisid = box.get('myid');
    var mycontact = box.get('contact');
    var myaddress = box.get('address');
    var gps = box.get('GPS');
    var country = box.get('country');
    var city = box.get('city');
    var date = box.get('date');






    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Container(
            width: double.infinity,
            height: 600,
            // color: Colors.black54,
            margin: EdgeInsets.only(top: 5),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              // color: Colors.blue,
              elevation: 15,
              child:
                 ListView(
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: Card(
                        elevation: 2,
                        child:Center(
                          child: Text("User Information",style: TextStyle(fontSize: 17),),
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Name"),
                      subtitle: Text("$hisname"),
                    ),

                    ListTile(
                      leading: Icon(Icons.mail),
                      title: Text("Email"),
                      subtitle: Text("$hismail"),
                    ),

                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("Telephone"),
                      subtitle: Text("$mycontact"),
                    ),

                    ListTile(
                      leading: Icon(Icons.location_city),
                      title: Text("Address"),
                      subtitle: Text("$myaddress"),
                    ),

                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text("GPS Address"),
                      subtitle: Text("$gps"),
                    ),

                    ListTile(
                      leading: Icon(Icons.map),
                      title: Text("Country"),
                      subtitle: Text("$country"),
                    ),

                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("City"),
                      subtitle: Text("$city"),
                    ),

                    ListTile(
                      leading: Icon(Icons.date_range),
                      title: Text("Date Registed"),
                      subtitle: Text("$date"),
                    ),
                  ],
                ),
              
            ),
          ),
        ),
      ),
    );
  }
}

// class News{
//   final String ntitle;
//   final String newsc;
//   final String dateadded;
//   News(this.ntitle,this.newsc,this.dateadded);






// }