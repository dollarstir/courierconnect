import 'package:flutter/material.dart';
import './track.dart';
import './sidebar.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import './contact.dart';
import './home.dart';
import './ne.dart';
import './profile.dart';
import 'api.dart';
import './payments.dart';
import './airactivity.dart';


class Ship extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ShipState();
  }
}

// onWillPop: () async => false,
class ShipState extends State<Ship> {
  int _currentindex = 0;



  
  @override
  Widget build(BuildContext context) {

    var box = Hive.box('cbox');

// box.put('name', 'David');

    var hisname = box.get('username');
    var hismail = box.get('usermail');

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
            Text("Shipping"),
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
              Sidebar(hisname,hismail),
            ],
          ),
        ),
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          
          child: ListView(

            children: [
              Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 20,
                  
                  color: Colors.blue,
                  child: ListTile(
                    hoverColor: Colors.black,
                    // dense: true,
                    
                    leading: Image.asset('assets/images/air.png'),
                    title: Text("Air Freight",textAlign: TextAlign.justify,style: TextStyle(fontSize: 20,color: Colors.white),),
                    // subtitle: Text("check out news",textAlign: TextAlign.justify,style: TextStyle(color: Colors.white),),
                    onTap: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return AirAct();
                      }));

                      
                    },

                  ),

                ),
              ),


              Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 20,
                  
                  color: Colors.blue,
                  child: ListTile(
                    hoverColor: Colors.black,
                    // dense: true,
                    
                    leading: Image.asset('assets/images/sea.png'),
                    title: Text("Sea Freight",textAlign: TextAlign.justify,style: TextStyle(fontSize: 20,color: Colors.white),),
                    // subtitle: Text("continue >>",textAlign: TextAlign.justify,style: TextStyle(color: Colors.white),),
                    onTap: () {
                        
                      
                    },

                  ),

                ),
              ),


              Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 20,
                  
                  color: Colors.blue,
                  child: ListTile(
                    hoverColor: Colors.black,
                    // dense: true,
                    
                    leading: Image.asset('assets/images/pack.png'),
                    title: Text("Package Consolidation",textAlign: TextAlign.justify,style: TextStyle(fontSize: 20,color: Colors.white),),
                    // subtitle: Text("view activities",textAlign: TextAlign.justify,style: TextStyle(color: Colors.white),),
                    onTap: () {
                        
                      
                    },

                  ),

                ),
              ),

              Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 20,
                  
                  color: Colors.blue,
                  child: ListTile(
                    hoverColor: Colors.black,
                    // dense: true,
                    
                    leading: Image.asset('assets/images/ship1.png'),
                    title: Text("Shipping Solution",textAlign: TextAlign.justify,style: TextStyle(fontSize: 20,color: Colors.white),),
                    // subtitle: Text("View Profile",textAlign: TextAlign.justify,style: TextStyle(color: Colors.white),),
                    onTap: ()async {
                      
                      var ru = await getuser();
                        var box = Hive.box('cbox');

                        box.put('contact', ru[0]['Telephone']);
                        box.put('username', ru[0]['Name']);
                        box.put('usermail', ru[0]['Email']);
                        box.put('address', ru[0]['Address']);
                        box.put('GPS', ru[0]['GPS']);
                        box.put('country', ru[0]['Country']);
                        box.put('city', ru[0]['City']);
                        box.put('date', ru[0]['RegDate']);








                       Navigator.push(context, MaterialPageRoute(builder: (context){
                        return PF();
                      }));
                        
                      
                    },

                  ),

                ),
              ),


              Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 20,
                  
                  color: Colors.blue,
                  child: ListTile(
                    hoverColor: Colors.black,
                    // dense: true,
                    
                    leading: Image.asset('assets/images/pe.png'),
                    title: Text("Concierge Services",textAlign: TextAlign.justify,style: TextStyle(fontSize: 20,color: Colors.white),),
                    // subtitle: Text("view our payment methos",textAlign: TextAlign.justify,style: TextStyle(color: Colors.white),),
                    onTap: () {
                        
                         Navigator.push(context, MaterialPageRoute(builder: (context){
                        return paymet();
                      }));
                      
                    },

                  ),

                ),
              ),


              Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 20,
                  
                  color: Colors.blue,
                  child: ListTile(
                    hoverColor: Colors.black,
                    // dense: true,
                    
                    leading: Image.asset('assets/images/pe.png'),
                    title: Text("Online Purchase",textAlign: TextAlign.justify,style: TextStyle(fontSize: 20,color: Colors.white),),
                    // subtitle: Text("view our payment methos",textAlign: TextAlign.justify,style: TextStyle(color: Colors.white),),
                    onTap: () {
                        
                         Navigator.push(context, MaterialPageRoute(builder: (context){
                        return paymet();
                      }));
                      
                    },

                  ),

                ),
              ),


              Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 20,
                  
                  color: Colors.blue,
                  child: ListTile(
                    hoverColor: Colors.black,
                    // dense: true,
                    
                    leading: Icon(Icons.palette,size: 70,),
                    title: Text("Personal Shopping",textAlign: TextAlign.justify,style: TextStyle(fontSize: 20,color: Colors.white),),
                    // subtitle: Text("view our payment methos",textAlign: TextAlign.justify,style: TextStyle(color: Colors.white),),
                    onTap: () {
                        
                         Navigator.push(context, MaterialPageRoute(builder: (context){
                        return paymet();
                      }));
                      
                    },

                  ),

                ),
              ),


              Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 20,
                  
                  color: Colors.blue,
                  child: ListTile(
                    hoverColor: Colors.black,
                    // dense: true,
                    
                    leading: Icon(Icons.shopping_cart,size: 60,),
                    title: Text("Gift Services",textAlign: TextAlign.justify,style: TextStyle(fontSize: 20,color: Colors.white),),
                    // subtitle: Text("view our payment methos",textAlign: TextAlign.justify,style: TextStyle(color: Colors.white),),
                    onTap: () {
                        
                         Navigator.push(context, MaterialPageRoute(builder: (context){
                        return paymet();
                      }));
                      
                    },

                  ),

                ),
              ),
            ],

            
            
            
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        // iconSize: 10,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.white,),
            title: Text("home",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
            
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.swap_vertical_circle,color: Colors.white,),
            title: Text("Ship",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.location_on,color: Colors.white,),
            title: Text("Track",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
          ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.group_work,  ),
          //   title: Text("Services"),
          // ),

          BottomNavigationBarItem(
            icon: Icon(Icons.call,color: Colors.white,),
            title: Text("Contact",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
            
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });

          if (_currentindex==2) {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Track();
            }),);
            
          }
          else if(_currentindex==1){

             Navigator.push(context, MaterialPageRoute(builder: (context){
              return Track();
            }),);

          }
          else if(_currentindex==3){
             Navigator.push(context, MaterialPageRoute(builder: (context){
              return Contact();
            }),);
          }
          else{

            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Home();
            }),);

          }
        },
      ),
    );
  }
}
