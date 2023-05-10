import 'package:flutter/materiel.dart';
import 'package:BABYTALKS/pages/Homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        ScaffoldBackgroudColor : Colors.white ,
       ),
       routes : {
        "/" : (context) => HomePage()
       }
    );
  }
}