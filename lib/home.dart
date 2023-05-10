import 'dart:convert';

import 'package:babytalk/function.dart';
import 'package:babytalk/predict.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url = '';
  var data;
  String output = 'cathegorie';
  Color nudeColor = Color(0xFFECE5DD).withOpacity(0.5);


  List<Map<String, dynamic>> _cards = [
    {     
      'image': '../assets/babytalks.png',
      'title': 'How to Survive the First Year of Parenthood',    
      'description': 'Congratulations on becoming a parent! The first year of parenthood can be both exciting and overwhelming, but there are ways to make it a little easier. Here are some tips on how to survive the first year of parenthood:',    
    },    
    {      
      'image': '../assets/babytalks.png',      
      'title': 'The top 5 benefits of baby massage',      
      'description': 'This is the description for Card 2',    
    },    
    {      
      'image': '../assets/babytalks.png',      
      'title': 'Discover the magic of reading to your baby',      
      'description': 'This is the description for Card 3',    
    },    
    {      
      'image': '../assets/babytalks.png',      
      'title': 'The Benefits of Baby Yoga and How to Get Started',      
      'description': 'This is the description for Card 4',    
    },  
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baby talk'),
        backgroundColor: nudeColor,
        actions: [
    PopupMenuButton<String>(
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'first',
          child: Text('Home'),
        ),
        PopupMenuItem<String>(
          value: 'second',
          child: Text('Articles'),
        ),
        PopupMenuItem<String>(
          value: 'third',
          child: Text('Baby world'),
        ),
      ],
      onSelected: (value) {
        // Handle menu item selection
        print('Selected: $value');
      },
      icon: Icon(Icons.menu),
    ),
  ],
        ),
     body: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            for (final card in _cards)
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                      height: 100, // set the desired height
                      width: 200, // set the desired width
                      child: Image.asset(
                        card['image'],
                      ),
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        card['title'],
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(card['description']),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                //url = 'http://127.0.0.1:5000/api?query=' + value.toString();
                url = 'http://100.70.34.175:5000/api?query=' + value.toString();
              },
            ),
            TextButton(
              onPressed: () async {
                data = await fetchdata(url);
                var decoded = jsonDecode(data);
                setState(() {
                  output = decoded['output'];
                });
              },
              child: Text(
                'chercher la cathegorie',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text(
              output,
              style: TextStyle(fontSize: 40, color: Colors.green),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Predict()),
                );
              },
              child: Text('Try the App'),
            ),
          ],
        ),
      ),
    ],
  ),
);
  }
}