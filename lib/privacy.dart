import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';


class PV extends StatefulWidget {
  // name({Key key}) : super(key: key);

  PVState createState() => PVState();
}

class PVState extends State<PV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy  Policy",style: TextStyle(fontSize: 18),),
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
                                        title: Text("Privacy Policy",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("This privacy policy governs your use of the software application Courier Connect Limited (“Application”) for mobile devices. The Application is intended to facilitate the movement of goods from different locations through Courier Connect Limited or the use of individual Transporters or business Transporters.What information does the Application obtain and how is it used?"),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("User Provided Information",style:GoogleFonts.gabriela() ,),
                                        subtitle:   Text("The Application obtains the information you provide when you download and start using the Application. Registration with us is optional. However, please keep in mind that you may not be able to use some of the features offered by the Application unless you register with us. \n  We may also use the information you provided us to contact you from time to time to provide you with important information, required notices and marketing promotions.",style: TextStyle(),),
                                        
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Automatically Collected Information",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("In addition, the Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers you use, and information about the way you use the Application.  "),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Does the Application collect precise real time location information of the device?",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("This Application does collect precise information about the location of your mobile device. User location is collected for the sole use of this application to find other users in the same vicinity, data collected will not be shared under any circumstance with third parties of any kind."),
                                      ),
                                      ),


                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Do third parties see and/or have access to information obtained by the Application?",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("Only aggregated, anonymized data is periodically transmitted to external services to help us improve the Application and our service. We will share your information with third parties only in the ways that are described in this privacy statement. \n \n We may disclose User Provided and Automatically Collected Information: \n as required by law, such as to comply with a subpoena, or similar legal process; \n when we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request; \n with our trusted services providers who work on our behalf, do not have an independent use of the information we disclose to them, and have agreed to adhere to the rules set forth in this privacy statement. \n if Courier Connect Limited is involved in a merger, acquisition, or sale of all or a portion of its assets, you will be notified via email and/or a prominent notice on our Web site of any change in ownership or uses of this information, as well as any choices you may have regarding this information."),
                                      ),
                                      ),



                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("What are my opt-out rights?",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("You can stop all collection of information by the Application easily by uninstalling the Application. You may use the standard uninstall processes as may be available as part of your mobile device or via the mobile application marketplace or network. You can also request to opt-out via email, at privacy@Courier Connect Limited.com. "),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Data Retention Policy, Managing Your Information",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("We will retain User Provided data for as long as you use the Application and for a reasonable time thereafter. We will retain Automatically Collected information for up to 24 months and thereafter may store it in aggregate. If you’d like us to delete User Provided Data that you have provided via the Application, please contact us at privacy@Courier Connect Limited.com and we will respond in a reasonable time. Please note that some or all of the User Provided Data may be required in order for the Application to function properly."),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Children",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("We do not use the Application to knowingly solicit data from or market to children under the age of 16. If a parent or guardian becomes aware that his or her child has provided us with information without their consent, he or she should contact us at privacy@Courier Connect Limited.com We will delete such information from our files within a reasonable time."),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Security",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("We are concerned about safeguarding the confidentiality of your information. We provide physical, electronic, and procedural safeguards to protect information we process and maintain. For example, we limit access to this information to authorized employees and contractors who need to know that information in order to operate, develop or improve our Application. Please be aware that, although we endeavor to provide reasonable security for information we process and maintain, no security system can prevent all potential security breaches. "),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Changes",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("This Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to our Privacy Policy by posting the new Privacy Policy here and informing you via email or text message. You are advised to consult this Privacy Policy regularly for any changes, as continued use is deemed approval of all changes. "),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Your Consent",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("By using the Application, you are consenting to our processing of your information as set forth in this Privacy Policy now and as amended by us. \"Processing,” means using cookies on a computer/hand held device or using or touching information in any way, including, but not limited to, collecting, storing, deleting, using, combining and disclosing information, all of which activities will take place in the United States. If you reside outside the United States your information will be transferred, processed and stored there under United States privacy standards. "),
                                      ),
                                      ),


                                      Container(
                                        
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Contact us",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("If you have any questions regarding privacy while using the Application, or have questions about our practices, please contact us via email at: "),
                                      ),
                                      ),

                                      
                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                          onTap: ()async{
                                            // await launch('mailto:kpin463@gmail.com?subject=News&body=New%20plugin',);
                                          },
                                        title: Text("info@courierconnectgh.com",style:GoogleFonts.gabriela(color: Colors.blue,) ,),
                                        // subtitle: Text("All information provided to CCL by visitors to these web pages is considered to be confidential and will not be disclosed by CCL to any third party except as may be required for the provision of the services."),
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