import 'dart:convert';

import 'package:babytalk/function.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url = ''; // URL de l'API à interroger
  var data; // Données renvoyées par l'API
  String output = 'cathegorie'; // Résultat de la requête

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Baby talk')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

            // Champ de texte pour saisir la requête à envoyer à l'API
            TextField(
              onChanged: (value) {
                url = 'http://127.0.0.1:5000/api?query=' + value.toString(); // Mise à jour de l'URL avec la nouvelle valeur saisie
              },
            ),

            // Bouton pour envoyer la requête à l'API
            TextButton(
                onPressed: () async {
                  data = await fetchdata(url); // Envoi de la requête à l'API
                  var decoded = jsonDecode(data); // Décodage des données renvoyées par l'API
                  setState(() {
                    output = decoded['output']; // Mise à jour de la variable "output" avec le résultat de la requête
                  });
                },
                child: Text(
                  'chercher la cathegorie',
                  style: TextStyle(fontSize: 20),
                )),

            // Affichage du résultat de la requête
            Text(
              output,
              style: TextStyle(fontSize: 40, color: Colors.green),
            )
          ]),
        ),
      ),
    );
  }
}
