import 'package:flutter/material.dart';
import './track.dart';
import './sidebar.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import './contact.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

// onWillPop: () async => false,
class HomeState extends State<Home> {
  int _currentindex = 0;
  List<Widget> pages = [HomeView(), Track(), Track(), Contact()];

  @override
  Widget build(BuildContext context) {
    var box = Hive.box('cbox');

// box.put('name', 'David');

    var hisname = box.get('username');
    var hismail = box.get('usermail');
    // var islog = box.get('islog');

    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,

        title: Row(
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/logo.png'),
              width: 50,
              height: 50,
              padding: EdgeInsetsDirectional.only(top: 10),
              //  margin: EdgeInsets.only(right: -20,),

              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                // image: DecorationImage(
                //   image: AssetImage('assets/images/logo.png'),
                // ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Courier Connectgh"),
            SizedBox(
              width: 1,
            ),
          ],
        ),
        // backgroundColor: Colors.white,
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView(
            children: [
              // UserAccountsDrawerHeader(
              //   accountName: Text("Dollarstir"),
              //   accountEmail: Text("Dollarstir@gmail.com"),
              // ),
              Sidebar(hisname, hismail),
            ],
          ),
        ),
      ),
      body: pages[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              "home",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.swap_vertical_circle,
              color: Colors.white,
            ),
            title: Text(
              "Ship",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            title: Text(
              "Track",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: Colors.white,
            ),
            title: Text(
              "Contact",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  // color: Colors.lightBlue,
                  ),
              child: Card(
                elevation: 15,
                child: Column(
                  children: [
                    Image.asset('assets/images/p1.jpg'),
                    ListTile(
                      title: Text(
                          "At Courier Connect Limited we strive to achieve these through:"),
                      subtitle: Text(
                          "Treating everyone with honesty, fairness and respect. Conducting our business in a friendly environment with the highest level of integrity. Being Professional, Customer-Focused and result-oriented. Provision of excellent and efficient customer service for our clients. Investment in training staff "),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  // color: Colors.lightBlue,
                  ),
              child: Card(
                elevation: 15,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          // margin: EdgeInsets.only(left: 10),
                          child: Card(
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/images/air.png',
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "AIR FREIGHT ",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    'Our Air Freight Service is available from the USA,\n UK and China(delivery times vary\n from 4-8 weeks depending on location) Packages can be picked up \nfrom our offices or delivered anywhere in Ghana.',
                                    style: GoogleFonts.gabriela(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 10),
                          child: Card(
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/images/sea.png',
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "SEA FREIGHT ",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    'Our Sea Freight Service is available from the USA, UK and China(delivery times vary from 4-8 weeks depending on location) Packages can be picked up from our offices or delivered anywhere in Ghana.',
                                    style: GoogleFonts.gabriela(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Container(
                        //   width: 102,
                        //   margin: EdgeInsets.only(left: 10),
                        //   child: Card(
                        //     elevation: 10,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.start,

                        //       children: [
                        //         Container(
                        //           width: 100,
                        //           height: 100,
                        //           child: Image.asset('assets/images/group.png',),
                        //         ),
                        //        Container(
                        //          width: 100,
                        //          child:  Text("GROUP SHIPPING ",style: TextStyle(decoration: TextDecoration.underline),),
                        //        ),
                        //        SizedBox(height: 10,),

                        //        Container(
                        //          width: 100,

                        //          child:Text('For corporates & groups of individuals, it helps to ship a set of similar requests in one package. Courier Connect group shipping provides the added convenience of speed, reliability, group delivery and budget cuts.',style: GoogleFonts.gabriela(),),
                        //        ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Container(
                        //   width: 150,
                        //   // margin: EdgeInsets.only(left: 10),
                        //   child: Card(
                        //     elevation: 10,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.start,

                        //       children: [
                        //         Container(
                        //           width: 100,
                        //           height: 100,
                        //           child: Image.asset('assets/images/air.png',),
                        //         ),
                        //        Container(
                        //          width: 100,
                        //          child:  Text("AIR FREIGHT ",style: TextStyle(decoration: TextDecoration.underline),),
                        //        ),
                        //        SizedBox(height: 10,),

                        //        Container(
                        //          width: 100,

                        //          child:Text('Our Air Freight Service is available from the USA,\n UK and China(delivery times vary\n from 4-8 weeks depending on location) Packages can be picked up \nfrom our offices or delivered anywhere in Ghana.',style: GoogleFonts.gabriela(),),
                        //        ),
                        //       ],
                        //     ),
                        //   ),
                        // ),

                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 10),
                          child: Card(
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/images/pe.png',
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "Concierge Services & Personal Shopping ",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    'You can opt for our personal shoppers to handle the tedious process of shopping for many different things.You simply have to send a list of exactly what you want and we will handle the rest, for a fee.Get your wish list stress free with Courier Connect.',
                                    style: GoogleFonts.gabriela(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 10),
                          child: Card(
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/images/group.png',
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "GROUP SHIPPING ",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    'For corporates & groups of individuals, it helps to ship a set of similar requests in one package. Courier Connect group shipping provides the added convenience of speed, reliability, group delivery and budget cuts.',
                                    style: GoogleFonts.gabriela(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          // margin: EdgeInsets.only(left: 10),
                          child: Card(
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/images/pack.png',
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "Package Consolidation  ",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    'Courier Connect is all about being efficient and economic with your shipments.Orders coming in at different times can be stored safely and shipped as one package sparing you the cost of shipping several times.Ask about our storage prices and availability.We are happy to help you save! ',
                                    style: GoogleFonts.gabriela(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          width: 150,
                          margin: EdgeInsets.only(left: 10),
                          child: Card(
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/images/ship1.png',
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "Shipping Solutions",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    'Our standard service runs on an “ All-Inclusive” system which covers package reception, shipping and clearing (3-5 working days – ceteris paribus) Our clients can also choose our“ Ship Only Service our team only handles package reception and freight and hands over documentation to your private clearing agent. Please note that 3 - 5 working day delivery period does not apply to packages containing lithium ion or that fall under “Dangerous Goods & Hazardous Materials” as they are subject to compliance procedures in line with IATA Dangerous good regulations. This notice applies to all shipments of phones, laptops, batteries, drones, tablets. ',
                                    style: GoogleFonts.gabriela(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Container(
                        //   width: 102,
                        //   margin: EdgeInsets.only(left: 10),
                        //   child: Card(
                        //     elevation: 10,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.start,

                        //       children: [
                        //         Container(
                        //           width: 100,
                        //           height: 100,
                        //           child: Image.asset('assets/images/group.png',),
                        //         ),
                        //        Container(
                        //          width: 100,
                        //          child:  Text("GROUP SHIPPING ",style: TextStyle(decoration: TextDecoration.underline),),
                        //        ),
                        //        SizedBox(height: 10,),

                        //        Container(
                        //          width: 100,

                        //          child:Text('For corporates & groups of individuals, it helps to ship a set of similar requests in one package. Courier Connect group shipping provides the added convenience of speed, reliability, group delivery and budget cuts.',style: GoogleFonts.gabriela(),),
                        //        ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  // color: Colors.lightBlue,
                  ),
              child: Card(
                elevation: 15,
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text("OUR PROMISE TO YOU",
                          style: TextStyle(fontSize: 20)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Every shipment will receive experienced professional, individual attention from order through pickup and deleivery. If humanly possible, your goods will arrive on time, undamaged, every time.",
                        style: GoogleFonts.gabriela(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
