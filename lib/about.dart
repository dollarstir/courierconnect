import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("About"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Card(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: ListTile(
                              title: Text(
                                "Who We are",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  "We provide personalized shipping solutions, by air and sea, tailored to your specific needs. Our service is excellent for individuals and small to large businesses, as we ship a wide range of package types. You can choose to have your package delivered to your door or pick up from our local office."),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Our Values",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                                "Courier Connect Limited pursues it mission and vision guided by the following core values: "),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/excellent.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("EXCELLENCE")
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/focus.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("FOCUS")
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/customer_service.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("CUSTOMER SERVICE")
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/ethics.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("GOOD ETHICAL PRACTICES")
                                  ],
                                ),
                              ),
                            ],
                          ),



                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/teamwork.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("TEAMWORK")
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/tenacity.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("TENACITY")
                                  ],
                                ),
                              ),
                            ],
                          ),


                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/do.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("INITIATIVE")
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/creativity.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("CREATIVITY")
                                  ],
                                ),
                              ),
                            ],
                          ),


                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/comprehensive.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("COMPREHENSIVE")
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/passion.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("PASSION FOR EXCELLENCE")
                                  ],
                                ),
                              ),
                            ],
                          ),


                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/details.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("ATTENTION TO DETAILS")
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/professionalism.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("PROFESSIONALISM")
                                  ],
                                ),
                              ),
                            ],
                          ),


                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(width: 1.0, color: Colors.blue),
                                    left: BorderSide(
                                        width: 1.0, color: Color(0xFFFFDFDFDF)),
                                    right: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                    bottom: BorderSide(
                                        width: 1.0, color: Color(0xFFFF7F7F7F)),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/integrity.png',
                                      width: 120,
                                      height: 120,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("COMMITMENT TO EXCELLENCE INTEGRITY")
                                  ],
                                ),
                              ),
                              // Container(
                              //   decoration: BoxDecoration(
                              //     border: Border(
                              //       top: BorderSide(width: 1.0, color: Colors.blue),
                              //       left: BorderSide(
                              //           width: 1.0, color: Color(0xFFFFDFDFDF)),
                              //       right: BorderSide(
                              //           width: 1.0, color: Color(0xFFFF7F7F7F)),
                              //       bottom: BorderSide(
                              //           width: 1.0, color: Color(0xFFFF7F7F7F)),
                              //     ),
                              //   ),
                              //   child: Column(
                              //     children: [
                              //       Image.asset(
                              //         'assets/images/ethics.png',
                              //         width: 120,
                              //         height: 120,
                              //       ),
                              //       SizedBox(
                              //         height: 10,
                              //       ),
                              //       Text("GOOD ETHICAL PRACTICES")
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),

                           SizedBox(height: 10,),

                          Card(
                            elevation: 15,

                            child: Column(
                              children: [
                                ListTile(
                                  title: Text("OUR MISSION",textAlign: TextAlign.center),
                                  subtitle: Text("Our mission is to be perceived as outstanding amongst other Courier Companies in Ghana giving brief, productive, Cost-compelling, Value for Money administrations to our clients while being socially dependable."),

                                ),
                                SizedBox(height: 10,),
                                ListTile(
                                  title: Text("OUR VISION",textAlign: TextAlign.center),
                                  subtitle: Text("Our vision is to turn into the preeminent Courier Company related with Speed, Safety, and dependability and be known as being first in client support in Ghana and past."),

                                ),

                                SizedBox(height: 10,),
                                ListTile(
                                  title: Text("OUR TEAM",textAlign: TextAlign.center,),
                                  subtitle: Text("Dedicated personnel, ready to assist, support and provide you with the assistance you need to get for your packages to be safely delivered to you. We currently have operations to Ghana out of the UK, USA, Germany and China. "),

                                ),
                              ],
                            ),
                          )


                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
