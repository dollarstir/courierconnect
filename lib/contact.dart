import 'package:flutter/material.dart';
import './home.dart';
import './register.dart';
import './api.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './track.dart';
import './sidebar.dart';


class Contact extends StatefulWidget {
  // name({Key key}) : super(key: key);

  LoginState createState() => LoginState();
}

class LoginState extends State<Contact> {

  int _currentindex = 3;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  var uname = '';
  var umail ='';
  var upas = '';
  @override
  Widget build(BuildContext context) {

     var box = Hive.box('cbox');

// box.put('name', 'David');

    var hisname = box.get('username');
    var hismail = box.get('usermail');


    //  var box = Hive.box('cbox');
    //   // box.put("headname", "Dollarstir");
    //  var mymail= box.get("headname");
    return Scaffold(

      appBar: AppBar(
        // automaticallyImplyLeading: false,

        title: Row(
          children: <Widget>[
            // Container(
            //   // child: Image.asset('assets/images/track.png'),
            //   width: 40,
            //   height: 40,
            //   padding: EdgeInsetsDirectional.only(top: 10),
            //   //  margin: EdgeInsets.only(right: -20,),

            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     shape: BoxShape.circle,
            //     image: DecorationImage(
            //       image: AssetImage('assets/images/track.png'),
            //     ),
            //   ),
            // ),
            SizedBox(
              width: 10,
            ),
            Text("Contact"),
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
     body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Container(
                child: Card(
                  elevation: 15,
                  color: Colors.blue,
                                  child: ListView(
                    children: [
                      ListTile(
                            leading: Icon(Icons.navigation,color: Colors.white,),
                            
                            title: Text("Address",style: TextStyle(color: Colors.white,),),
                            subtitle: Text('P.O. Box TD 286, \n  Takoradi. \n Loc. Adwoa Aframa Mall',style: TextStyle(color: Colors.white,),),

                          ),

                          SizedBox(height: 10,),

                           ListTile(
                            leading: Icon(Icons.location_on,color: Colors.white,),
                            title: Text("Digital Address",style: TextStyle(color: Colors.white,)),
                            subtitle: Text('WS-349-8085',style: TextStyle(color: Colors.white,)),

                          ),

                          SizedBox(height: 10,),

                           ListTile(
                            leading: Icon(Icons.mail,color: Colors.white,),
                            title: Text("Email",style: TextStyle(color: Colors.white,)),
                            subtitle: Text('info@courierconnectgh.com',style: TextStyle(color: Colors.white,)),

                          ),

                           SizedBox(height: 10,),

                          ListTile(
                            leading: Icon(Icons.contact_phone,color: Colors.white,),
                            title: Text("Telephone Number",style: TextStyle(color: Colors.white,)),
                            subtitle: Text('+233 31 203 6997 \n +(233) 501 331 044 \n +(233) 547 234 606',style: TextStyle(color: Colors.white,)  ),

                          ),
                    ],
                  ),
                ),
               
              ),
            ),

            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.all(Radius.circular(10)),
            // ),
            // color: Colors.blue,
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          child: TextField(
                            // obscureText: true,
                            controller: emailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "$hismail",
                              enabled: false,
                              
                              fillColor: Colors.amberAccent,
                            ),

                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          width: 250,
                          height: 40,
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          child: TextField(
                            // obscureText: true,
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter your message',
                              
                              
                              fillColor: Colors.amberAccent,
                            ),

                            style: TextStyle(
                              color: Colors.black,
                              // height: 10,
                            ),
                          ),
                          width: 250,
                          // height: 100,
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          
                          child: RaisedButton(
          onPressed: () async{
            var resp = await login(emailController.text,passwordController.text);
            print(resp);
            if(resp=="enter email"){

            }
            else if(resp=="Please enter correct password"){

            }
            else if(resp=="wrong"){

            }

            else{
              setState(() {
                uname =resp[0]['Name'];
                umail = resp[0]['Email'];
                upas = passwordController.text;
              });

              var box = Hive.box('cbox');

              box.put('username', '$uname');
              box.put('usermail', '$umail');
              box.put('userpassword', '$upas');
              


              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Home();
              }));


            }
          },
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            width: 250,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Send Message',
              style: TextStyle(fontSize: 18,)
            ),
          ),
        ),
                          width: 250,
                          height: 40,
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(10),
                          //   color: Colors.white,
                          // ),
                          
                        ),
                        // Container(
                        //   child: Row(
                        //     children: [
                        //       Text(
                        //         "Don\'t have account?",
                        //         style: TextStyle(color: Colors.white),
                        //       ),
                        //       RaisedButton(
                        //         child: Container(
                        //           child: Text(
                        //             "Register",
                        //             style: TextStyle(color: Colors.white,backgroundColor: Colors.lightBlue),
                        //           ),
                        //           // color: Colors.indigo,
                        //         ),
                        //         onPressed: () {
                        //           Navigator.push(context,
                        //               MaterialPageRoute(builder: (context) =>Register()
                        //           ));
                        //         },
                        //         color: Colors.lightBlue,
                        //       ),
                        //     ],
                        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   ),
                        //   width: 280,
                        //   height: 40,
                        //   margin: EdgeInsets.only(
                        //     top: 20,
                        //   ),
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(10),
                        //     // color: Colors.white,
                        //   ),
                        //   padding: EdgeInsets.only(top: 10),
                        // ),  
                      ],
                    ),
                  ),
                ],

                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(40),
                  // topRight: Radius.circular(40),
                ),
                color: Colors.blue,
              ),
            ),
          ),
        ],
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