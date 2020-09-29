import 'package:flutter/material.dart';
import './legal.dart';
import './faqs.dart';
import './tc.dart';
import './privacy.dart';
import './awareness.dart';
import './accessibility.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './main.dart';
import './about.dart';
import './dashborad.dart';



class Sidebar extends StatelessWidget {
  final String myname;
  final String mymail;

  // const name({Key key}) : super(key: key);
    Sidebar(this.myname,this.mymail);
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        
        Container(
          // height: 27,
          margin: EdgeInsets.only(bottom: 10),
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
            
              border: Border.all(
            color: Colors.blueAccent,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.red,
                    
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ),

        UserAccountsDrawerHeader(
          
          decoration: BoxDecoration(
            
            
          ),
          accountName: Text(this.myname),
          accountEmail: Text(this.mymail),  
          
          currentAccountPicture: CircleAvatar(
            child: FlutterLogo(size: 42,),backgroundColor: Colors.white,
          ),
          otherAccountsPictures: [
            CircleAvatar(
              child: Icon(Icons.edit,size: 16,),
            ),
            CircleAvatar(
              child: Icon(Icons.power_settings_new,size: 16,),
            )
          ],
        ),
        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.blueAccent,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.dashboard,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "                 Dashboard",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return  Dashboard();
                }),
              );
            },
          ),
        ),


        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.blueAccent,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.book,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "                   News",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return About();
                }),
              );
            },
          ),
        ),


        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.blueAccent,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.local_shipping,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "            Shipping Services",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return About();
                }),
              );
            },
          ),
        ),


        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.blueAccent,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.local_activity,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "               Activities",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return About();
                }),
              );
            },
          ),
        ),


        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.blueAccent,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.verified_user,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "               Profile",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return About();
                }),
              );
            },
          ),
        ),


        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.blueAccent,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.supervised_user_circle,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "               About Us",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return About();
                }),
              );
            },
          ),
        ),
        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.lightBlue,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.label_important,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "           Term of Service",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return TC();
                }),
              );
            },
          ),
        ),
        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.lightBlue,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.security,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "            Privacy Policy ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PV();
                }),
              );
            },
          ),
        ),
        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.lightBlue,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.question_answer,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "             FAQ's",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExpansionTileSample()),
              );
            },
          ),
        ),
        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.lightBlue,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.accessibility,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "         Accessibility",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Accessibility()),
              );
            },
          ),
        ),
        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.lightBlue,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.notifications_active,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "         Legal Notice",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Legal()),
              );
            },
          ),
        ),
        Container(
          // alignment: AlignmentDirectional.topCenter,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.lightBlue,
          )),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.notification_important,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    "        Fraud Awareness",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Aware()),
              );
            },
          ),
        ),
      ],
    );
  }
}
