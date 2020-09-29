import './api.dart';
import './home.dart';
import 'package:flutter/material.dart';
import './sidebar.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './contact.dart';



class Track extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TrackState();
  }
}

class TrackState extends State<Track> {
  bool isFetched =false;

  final trackController = TextEditingController();
  var message;
  var mycolor;
  

  @override
  void dispose(){
    trackController.dispose();
    super.dispose();
  }
  
   var sfrom = 'koko ';
    var towhere = 'koo';
    var stat= 'koo';
    var trac="";
  @override
  Widget build(BuildContext context) {

    var box = Hive.box('cbox');

// box.put('name', 'David');

    var hisname = box.get('username');
    var hismail = box.get('usermail');



    if(isFetched){

      if(stat=="Shipped"){
        mycolor = Colors.green;
      }
      else if(stat=="In Transit"){
        mycolor = Colors.yellow;
      }
      else{
        mycolor = Colors.greenAccent;
      }
       
    }
    else{
      mycolor = Colors.red;
    }
    return Container(
      child: Container(
        child: Column(
          children: <Widget>[
            // Expanded(
            //   flex: 1,
            //   child: Text(""),
            // ),
            Expanded(
              flex: 10,
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          
                          child:
                            Theme(

                              data: new ThemeData(
                                primaryColor: Colors.blue,
                                primaryColorDark: Colors.blue,
                              ),


                              child:  TextField(
                                controller: trackController,
                                
                              // obscureText: true,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 20),
                                
                                // border: OutlineInputBorder(),
                                // labelText: '   Enter Tracking Number....',
                                hintText: '      Enter Tracking Number',
                                // fillColor: Colors.amberAccent,
                                
                              ),

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            ),
                          
                          width: 270,
                          height: 45,
                          
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue,),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        // Text(isFetched?message:"",style: TextStyle(fontSize: 20,color: Colors.green,),),
                        // Text(sfrom,style: TextStyle(fontSize: 20,color: Colors.green,),),

                        // message,
                        SizedBox(height: 10,),
                        Container(
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          margin: EdgeInsets.only(top: 10),
                          child: Card(
                            elevation: 15,
                            color: Colors.blue,
                            child: FlatButton.icon(
                              textColor: Colors.white,
                              // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                              color: Colors.blue,
                              onPressed: () async{


                                var trackid =trackController.text;
                                  message ="Please wait";

                                // var no = "hello";

                                var rsp = await tracking(trackid);
                                print(rsp);
                                setState(() {
                                  message ="Please wait";
                                });
                                if(rsp=="enter Tracking number"){
                                  
                                  setState(() {
                                      isFetched =false;
                                    
                                    message ="tracking id cannot be empty";
                                  });
                                  print(message);
                                  
                                }
                                else if(rsp=="Wrong"){
                                  setState(() {
                                      isFetched =false;
                                    message =" you entered wrong details";
                                  });
                                  print(message);
                                }
                                else{
                                  setState(() {
                                    isFetched =true;
                                    message="Tracking successful";
                                    trac=rsp[0]['ShipmentId'];
                                    sfrom =rsp[0]['Origin'];
                                    towhere =rsp[0]['Destination'];
                                    stat = rsp[0]['StatusId'];
                                  });
                                  print(message); 
                                  print(rsp[0]['StatusId']);
                                }
                              final snackBar = SnackBar(
                              content: Text('Yay! A SnackBar!'),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {
                                  // Some code to undo the change.
                                },
                              ),
                            );

                            // Find the Scaffold in the widget tree and use
                            // it to show a SnackBar.
                            

                              },
                              icon: Icon(Icons.location_on, size: 18),
                              label: Text("Track"),
                              
                            ),
                          ),
                        ),
                        // Container(
                        //   child: RaisedButton(
                        //     child: Row(
                        //       children: [
                        //         Icon(
                        //           Icons.location_on,
                        //           size: 24,
                        //         ),
                        //         Text("Track"),
                        //       ],
                        //       mainAxisAlignment:
                        //           MainAxisAlignment.spaceAround,
                        //     ),
                        //     onPressed: () {},
                        //   ),
                        //   width: 100,
                        //   height: 35,
                        //   margin: EdgeInsets.only(
                        //     top: 20,
                        //   ),
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.all(Radius.circular(20)),
                        //     color: Colors.white,
                        //   ),
                        // ),

                        Container(
                          width: 300,
                          margin: EdgeInsets.only(top: 30),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.blue,
                            elevation: 15,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                  ListTile(
                                  leading: Icon(Icons.credit_card, size: 25,color: Colors.white,),

                                  title: Text(isFetched? "Tracking # :  $trac ":"Tracking # :" ,
                                      style: TextStyle(color: Colors.white)),
                                ),


                                ListTile(
                                  leading: Icon(Icons.arrow_forward, size: 25,color: Colors.white,),

                                  title: Text(isFetched? "Shipping from :  $sfrom ":"Shipping from :" ,
                                      style: TextStyle(color: Colors.white)),
                                ),

                                  ListTile(
                                  leading: Icon(Icons.arrow_back, size: 25,color: Colors.white,),

                                  title: Text(isFetched? "Shipping to : $towhere ":"Shipping to :",
                                      style: TextStyle(color: Colors.white)),
                                ),

                                  ListTile(
                                  leading: Icon(Icons.album, size: 25,color: mycolor,),

                                  title: Text(isFetched? "Status : $stat ":"Status :",
                                      style: TextStyle(color: Colors.white)),
                                ),
                                // ButtonTheme.bar(
                                //   child: ButtonBar(
                                //     children: <Widget>[
                                //       FlatButton(
                                //         child: const Text('Edit',
                                //             style: TextStyle(
                                //                 color: Colors.white)),
                                //         onPressed: () {},
                                //       ),
                                //       FlatButton(
                                //         child: const Text('Delete',
                                //             style: TextStyle(
                                //                 color: Colors.white)),
                                //         onPressed: () {},
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                padding: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
