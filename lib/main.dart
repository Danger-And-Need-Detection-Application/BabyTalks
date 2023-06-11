import 'package:babytalk/firebase_options.dart';

import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

// Import des pages de l'application
import 'package:babytalk/pages/Homepage.dart';
import 'package:babytalk/pages/ItemPage.dart';
import 'package:babytalk/pages/RecordPage.dart';
import 'package:babytalk/pages/CalenderPage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        // Définition du thème global de l'application
        theme: ThemeData(
          scaffoldBackgroundColor : Colors.white ,
        ),

        // Définition des routes de l'application
        routes : {
          "/" : (context) => HomePage(), // Page d'accueil de l'application
          "homepage" : (context) => HomePage(), // Page d'accueil de l'application (alternative)
          "itemPage" : (context) => ItemPage(), // Page d'affichage d'un élément
          "recordpage" : (context) => RecordPage(), // Page d'enregistrement d'un élément
          "calenderpage" : (context) => CalenderPage(), // Page de calendrier
        }
    );
  }
}




