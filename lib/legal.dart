import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Legal extends StatefulWidget {
  

  LegalState createState() => LegalState();
}

class LegalState extends State<Legal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Legal Notice",style: TextStyle(fontSize: 18),),
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
                                        title: Text("Company Name",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("Courier Connect Limited"),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Board of Management",style:GoogleFonts.gabriela() ,),
                                        subtitle:   Text("Dr.Ken Allen \n Oscar de Bok \n Melanie Kreis \n  Dr. Tobias Meyer \n  Dr. Thomas Ogilvie \n  John Pearson \n   Tim Scharwath",style: TextStyle(),),
                                        
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Chairman of the Supervisory Board",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("Dr. Nikolaus von Bomhard"),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Commercial Register No",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("Registration court Bonn HRB 6792"),
                                      ),
                                      ),


                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Turnover Tax ID No",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("169838187"),
                                      ),
                                      ),



                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Address",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("P.O. Box TD 286, \n Takoradi \n Tel. +233 (000 000 000) \n"),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Website",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("www.courierconnectgh.com"),
                                      ),
                                      ),
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