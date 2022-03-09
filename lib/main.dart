// import 'package:first_app/login.dart';
// import 'package:first_app/register.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './home.dart';
import './getstarted.dart';
import 'login.dart';



void main() async{ 
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await path.getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  await Hive.openBox("cbox");
  

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  Widget checker() {
        var box = Hive.box('cbox');
        var firstTime = box.get("firstTime");
    var islogin = box.get("islog");

    if(firstTime == null) {
      return Getstarted();
    } else if (islogin == "1") {
      return Home();
    }

    return Login();
  }
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Courier Connect Ltd",
      debugShowCheckedModeBanner: false,
      home: checker(),
    );
  }
}
