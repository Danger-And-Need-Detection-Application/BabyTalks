import 'package:flutter/material.dart';
import 'package:babytalk/pages/Homepage.dart';

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
          "/" : (context) => HomePage()
        }
    );
  }
}




