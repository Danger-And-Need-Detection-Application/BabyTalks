import 'package:flutter/material.dart';
import 'package:babytalk/widgets/ItemAppBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class RecordPage extends StatefulWidget {
  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  bool _isClicked = false;
  bool _isRecording = false;
  bool _isPaused = false;

  void _startRecording() {
    // TODO: Start recording logic
    setState(() {
      _isRecording = true;
      _isPaused = false;
    });
  }

  void _pauseRecording() {
    // TODO: Pause recording logic
    setState(() {
      _isPaused = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ItemAppBar("Recording"),
          Center(
            child: Container(
              margin: EdgeInsets.all(40),
              child: Column(
                children: [
                  Text(
                    "Discover your baby's need",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
    margin: EdgeInsets.symmetric(vertical: 50.0),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: _isClicked
                    ? [Colors.pink, Colors.pink]
                    : [Colors.white, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
              ),
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isClicked = !_isClicked;
                });
              },
              child: Icon(
                Icons.mic,
                size: 150.0,
                color: _isClicked ? Colors.white : Colors.pink,
              ),
            ),
          ),
          Container(
    margin: EdgeInsets.symmetric(vertical: 50.0),
    child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
        width: 100.0,
        child: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.play_arrow,
            size: 70,
            color: Colors.purple,
          ),
        ),
      ),
              SizedBox(
        width: 100.0,
        child: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.pause,
            size: 70,
            color: Colors.purple,
          ),
        ),
      ),
              SizedBox(
        width: 100.0,
        child: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.stop,
            size: 70,
            color: Colors.purple,
          ),
        ),
      ),
            ],
          ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){
          if(index == 0){
            Navigator.pushNamed(context, "homepage");
          }else if(index == 1){
            Navigator.pushNamed(context, "recordpage");
          }else{
            Navigator.pushNamed(context, "calenderpage");
          }
        },
        height: 50,
        color: Color(0xFF4C35A5),
        index: 1,
        items: [
          Icon(
            Icons.home ,
            size: 20 ,
            color:Colors.white,
          ),
          Icon(
            Icons.mic,
            size: 20 ,
            color:Colors.white,
          ),
          Icon(
            Icons.calendar_today,
            size: 20 ,
            color:Colors.white,
          ),
        ],
      ),
    );
  }
}
