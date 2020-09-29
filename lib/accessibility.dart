import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import './privacy.dart';


class Accessibility extends StatefulWidget {
  // name({Key key}) : super(key: key);

  AccessState createState() => AccessState();
}

class AccessState extends State<Accessibility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accessibility",style: TextStyle(fontSize: 18),),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Container(
                            width: 350,
                            height: 500,
                            // color: Colors.black54,
                            margin: EdgeInsets.only(top: 5),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              // color: Colors.blue,
                              elevation: 15,
                              child: Scrollbar(
                                child: ListView(
                                
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("ACCESSIBILITY",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("Our site was created to meet the latest WCAG standards."),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("What is Web Accessibility?",style:GoogleFonts.gabriela() ,),
                                        subtitle:   Text("The aim of accessibility is to make websites usable by people of all abilities and disabilities. This requires websites to be designed in such a way that all users have equal access to information and functionality. ",style: TextStyle(),),
                                        
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("What Accessibility Standard does CCL use?",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("CCL has built its customer websites according to Web Content Accessibility Guidelines (WCAG) 2.0. Level AA and ARIA compliance standards have been followed in the CCL website’s HTML and CSS code."),
                                      ),
                                      ),

                                      


                                      // 
                                    ],
                                  )
                                ],
                              ),
                              ),
                            ),
                          ),
        ),
      ),

    );
  }
}