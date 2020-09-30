
import './model/Slide.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './model/Slide.dart';

import './widget/slider.dart';
import 'dart:async';
import './slidedot.dart';
import './home.dart';
import './login.dart';

class Getstarted extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetstartedState();
  }
}

class GetstartedState extends State<Getstarted> {
  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 30), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  _onPageChnaged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChnaged,
                      itemCount: Slidelist.length,
                      itemBuilder: (context, i) => SliderItem(i),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment:MainAxisAlignment.center ,
                            children: <Widget>[
                              for(int i =0; i <Slidelist.length; i++)
                              if (i ==_currentPage) 
                                SlideDot(true)

                                
                              
                              else
                                SlideDot(false)

                              
                            ],
                          ),
                          margin: EdgeInsetsDirectional.only(
                            bottom: 35,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FlatButton(
                    child: Text(
                      "Getting Started",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    onPressed: () {
                      Hive.box("cbox").put("firstTime", false);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
