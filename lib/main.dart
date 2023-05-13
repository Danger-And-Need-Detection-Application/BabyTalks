import 'package:flutter/material.dart';
import 'package:babytalk/pages/Homepage.dart';
import 'package:babytalk/pages/ItemPage.dart';
import 'package:babytalk/pages/RecordPage.dart';
import 'package:babytalk/pages/CalenderPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor : Colors.white ,
        ),
        routes : {
          "/" : (context) => HomePage(),
          "homepage" : (context) => HomePage(),
          "itemPage" : (context) => ItemPage(),
          "recordpage" : (context) => RecordPage(),
          "calenderpage" : (context) => CalenderPage(),
        }
    );
  }
}




