import 'package:flutter/material.dart';

class paymet extends StatefulWidget {
  paymet({Key key}) : super(key: key);

  _paymetState createState() => _paymetState();
}

class _paymetState extends State<paymet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 100,left: 3,right: 3),
        child:  ListView(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  height: 100,
                  child: Card(
                    elevation: 10,
                   child: Image.asset('assets/images/mtncash.png'), 
                  ),
                ),

                Container(
                  width: 130,
                  height: 100,

                  child: Card(
                    elevation: 10,

                   child: Image.asset('assets/images/vodafonecash.png'), 
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  height: 100,
                  child: Card(
                    elevation: 10,
                   child: Image.asset('assets/images/tigo.png'), 
                  ),
                ),

                Container(
                  width: 130,
                  height: 100,

                  child: Card(
                    elevation: 10,

                   child: Image.asset('assets/images/paypal.png'), 
                  ),
                ),
              ],
            ),


            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  height: 100,
                  child: Card(
                    elevation: 10,
                   child: Image.asset('assets/images/mastercard.png'), 
                  ),
                ),

                Container(
                  width: 130,
                  height: 100,

                  child: Card(
                    elevation: 10,

                   child: Image.asset('assets/images/visacard1.png'), 
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
    
  }
}