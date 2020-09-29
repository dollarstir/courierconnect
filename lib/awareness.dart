import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import './privacy.dart';


class Aware extends StatefulWidget {
  // name({Key key}) : super(key: key);

  AwareState createState() => AwareState();
}

class AwareState extends State<Aware> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fraud Awareness",style: TextStyle(fontSize: 18),),
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
                                        title: Text("Fraudulent Use of the CCL Brand",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("Attempts have been made to defraud Internet shoppers by the unauthorized use of the CCL name and brand via email communications and graphics which appear, on the surface, to have originated from CCL. \n In most cases the communications concern the sale of consumer goods over the Internet where payment may be requested before the goods are delivered. \n Please be advised that CCL does not request payment in this manner. CCL only collects money due for official CCL related shipping expenses. \n This security notice does not affect the obligation of a consignee to pay shipping, customs, VAT or similar charges, where these are properly payable at the time of delivery. \n CCL accepts no responsibility for any costs, charges or payments made which were improperly incurred as a result of fraudulent activity."),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Websites",style:GoogleFonts.gabriela() ,),
                                        subtitle:   Text("TIf you are in any doubt as to the integrity of a website that uses the CCL brand, please always access CCL websites via our global website. \n Visit CCL Global Websitefor more information",style: TextStyle(),),
                                        
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Report Fraud",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("Please report receiving fraudulent or suspicious CCL emails to CCL Customer Service."),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context){
                                              return PV();
                                            }));
                                          },
                                        title: Text(" Click here to Contact Us",style:GoogleFonts.gabriela(color: Colors.blue,) ,),
                                        // subtitle: Text("This Application does collect precise information about the location of your mobile device. User location is collected for the sole use of this application to find other users in the same vicinity, data collected will not be shared under any circumstance with third parties of any kind."),
                                      ),
                                      ),


                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Spam and Viruses",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("Please be advised that if you received an email suggesting that CCL is attempting to deliver a package requesting that you open the email attachment in order to affect delivery, this email is fraudulent, the package does not exist and the attachment may be a computer virus. \n Please do not open the attachment. This email and attachment does not originate from CCL. \n\n  *CCL (Courier Connect Limited)"),
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