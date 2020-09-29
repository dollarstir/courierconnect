import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TC extends StatefulWidget {
  // name({Key key}) : super(key: key);

  TCState createState() => TCState();
}

class TCState extends State<TC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms of Service",style: TextStyle(fontSize: 18),),
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
                                        title: Text("TERMS OF USE",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("On this page, you will find a standard version of the CCL Website Terms and Conditions. Please note that different terms and conditions may apply in certain countries. The Terms and Conditions of use of the CCL Website are as follows: CopyrightThe copyright in this publication is owned by CCL International GmbH."),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Authorization to Reproduce",style:GoogleFonts.gabriela() ,),
                                        subtitle:   Text("Any person may reproduce any portion of the material in these web pages subject to the following conditions:  \n The material may be used for information and non-commercial purposes only. \n  It may not be modified in any way. \n   No unauthorized copy is made of any CCL trademark. \n   Any copy of any portion of the material must include the following copyright notice:  \n   Copyright © CCL International GmbH. All Rights Reserved.",style: TextStyle(),),
                                        
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text(" CCL Trademarks",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("'CCL', 'CCL Worldwide Express', 'CCL Express', 'CCL Parcel', 'CCL eCommerce', 'CCL Freight', 'CCL Supply Chain', 'CCL Global Forwarding', 'CCL Europlus', 'Jumbo Box', 'CCL Economy Select', 'CCL Jetline', 'CCL Sprintline', 'CCL Secureline', 'CCL Express Easy', 'CCL Easy Shop', 'CCL Connect', 'EasyShip' are trademarks of CCL International GmbH or any other company of Deutsche Post CCL group, registered in at least one jurisdiction. No license to use any of these trademarks is given or implied. These trademarks may not be copied, downloaded, reproduced, used, modified or distributed in any way (except as an integral part of an authorized copy of material appearing in these web pages, as set forth in the previous section paragraph) without prior written permission. "),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Other Trademarks and Trade names",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("All other trademarks or trade names referred to in these materials are the property of their respective owners."),
                                      ),
                                      ),


                                      // Container(
                                      //   alignment: Alignment.center,
                                      //   child: ListTile(
                                      //   title: Text("Turnover Tax ID No",style:GoogleFonts.gabriela() ,),
                                      //   subtitle: Text("169838187"),
                                      // ),
                                      // ),



                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Your Comments",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("CCL wants your feedback and appreciates your ideas and suggestions but is unable to answer every comment individually. CCL will be free to use and act on any information you submit. "),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Use of interactive features on this site",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("For your convenience, CCL may provide interactive features on this site, such as access to tracking and user comments. You are authorized to use these features solely for the purposes specified and for no other purposes. "),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Accuracy of this site",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("These web pages may contain inadvertent inaccuracies or typographical errors. These will be corrected at CCL's discretion, as they are found. The information on these web pages is updated regularly, but inaccuracies may remain or occur where changes occur between updates. The Internet is maintained independently at multiple sites around the world and some of the information accessed through these web pages may originate outside of CCL. CCL excludes any obligation or responsibility for this content."),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Viruses",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("CCL makes all reasonable attempts to exclude viruses from these web pages, but it cannot ensure this exclusion and no liability is accepted for viruses. Please take all appropriate safeguards before downloading information from these web pages. "),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Disclaimer of Warranties",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("The services, the content and the information on this website are provided on an \"as is\" basis. CCL, to the fullest extent permitted by law, disclaims all warranties, whether express, implied, statutory or otherwise, including but not limited to the implied warranties of merchantability, non-infringement of third parties rights and fitness for a particular purpose. CCL, its affiliates and licensors make no representations or warranties about the accuracy, completeness, security or timeliness of the services, content or information provided on or through the CCL web site or systems. No information obtained via the CCL systems or website shall create any warranty not expressly stated by CCL in these terms and conditions.\n Some jurisdictions do not allow limitations of implied warranties, so the limitations and exclusions in this section may not apply to you. If you are dealing as a consumer, these provisions do not affect your statutory rights that cannot be waived, if any. You agree and acknowledge that the limitations and exclusions of liability and warranty provided in these terms and conditions are fair and reasonable.  "),
                                      ),
                                      ),

                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Limitation of Liability",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("To the extent permitted by law, in no event shall CCL, its affiliates or licensors or any third parties mentioned at the CCL website be liable for any incidental, indirect, exemplary, punitive and consequential damages, lost profits, or damages resulting from lost data or business interruption resulting from the use of or inability to use the CCL website and CCL systems, services, content or information whether based on warranty, contract, tort, delict, or any other legal theory, and whether or not CCL is advised of the possibility of such damages. Without limiting the foregoing, to the extent permitted by applicable law, you agree that in no event shall CCL's total liability for any damages (direct or otherwise) or loss regardless of the form of action or claim, whether in contract, tort or otherwise, exceed EUR 100.00. To the extent permitted by law, the remedies stated for you in these terms and conditions are exclusive and are limited to those expressly provided for in these terms and conditions. "),
                                      ),
                                      ),


                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Products and Services",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("Unless otherwise agreed in writing, the transportation products and services mentioned in these web pages are subject to CCL's Terms and Conditions of carriage. Since these may vary depending on location of the country of origin of the shipment, please contact the nearest CCL service center to obtain a copy of the local terms and conditions. Not all of CCL's products and services may be available in every country. "),
                                      ),
                                      ),


                                      Container(
                                        alignment: Alignment.center,
                                        child: ListTile(
                                        title: Text("Disclosure of Information",style:GoogleFonts.gabriela() ,),
                                        subtitle: Text("All information provided to CCL by visitors to these web pages is considered to be confidential and will not be disclosed by CCL to any third party except as may be required for the provision of the services."),
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