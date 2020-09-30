import 'package:Courierconnect/airdetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './api.dart';
import './newsd.dart';

class AirAct extends StatefulWidget {
  // name({Key key}) : super(key: key);

  AiractState createState() => AiractState();
}

class AiractState extends State<AirAct> {



   navigateToNextActivity(BuildContext context, Map dataHolder) {
    
     Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => AirDet(dataHolder)
        )
      );
 
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Air Activities",
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
              child:FutureBuilder(
                future: airActivity(),
                builder: (context, snapshot) {
                  if(snapshot.data == null){
                    return Container(
                      child: Center(child: Text("Loading..."),),
                    );
                  }
                  else{
                    return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder:(BuildContext context, int index){
                      return Container(
                      child: Card(
                         elevation: 15,
                         child: ListTile(
                           leading: Icon(Icons.rss_feed),
                           title: Text("${snapshot.data[index]['FullName']}"),
                           subtitle: Text("${snapshot.data[index]['Email']}"),
                           onTap: () {

                            navigateToNextActivity(context, snapshot.data[index]);

                           },
                        ),
                      ),
                     );
                    },

                  );
                  }
                } ,
                
                
              )
                //  ListView(
                //   children: [
                //     Container(
                //       child: Card(
                //         elevation: 15,
                //         child: ListTile(

                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              
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