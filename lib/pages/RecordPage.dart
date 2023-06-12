import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:babytalk/widgets/ItemAppBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:babytalk/function.dart';

class RecordPage extends StatefulWidget {
  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  bool _isClicked1 = false;
  bool _isClicked2 = false;
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
                      color: Color(0xFF361500),
                    ),
                  ),
                ],
              ),
            ),
          ),
      //     Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       pickFile(context);
      //     },
      //     child: Text(
      //       'Select File',
      //       style: TextStyle(
      //         color: Colors.white,
      //       )
      //       ),
      //   ),
      // ),
          Container(
    margin: EdgeInsets.symmetric(vertical: 30.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        child: Row(
        children: [
          Container(
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: _isClicked1
                    ? [Colors.white, Colors.white]
                    : [Color(0xFFDEA057), Color(0xFFDEA057)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
              ),
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isClicked1 = !_isClicked1;
                });
              },
              child: Icon(
                Icons.mic,
                size: 150.0,
                color: _isClicked1 ? Color(0xFFDEA057) : Colors.white,
              ),
            ),
          ),
    //         Container(
    // child: Row(
    //         children: [
    //           SizedBox(
    //     width: 100.0,
    //     child: IconButton(
    //       onPressed: null,
    //       icon: Icon(
    //         Icons.play_arrow,
    //         size: 70,
    //         color: Colors.purple,
    //       ),
    //     ),
    //   ),
    //           SizedBox(
    //     width: 100.0,
    //     child: IconButton(
    //       onPressed: null,
    //       icon: Icon(
    //         Icons.pause,
    //         size: 70,
    //         color: Colors.purple,
    //       ),
    //     ),
    //   ),
    //           SizedBox(
    //     width: 100.0,
    //     child: IconButton(
    //       onPressed: null,
    //       icon: Icon(
    //         Icons.stop,
    //         size: 70,
    //         color: Colors.purple,
    //       ),
    //     ),
    //   ),
    //         ],
    //       ),
        //   ),
          
        ],
        ),     
      ),
    
          Container(
    margin: EdgeInsets.symmetric(vertical: 30.0),
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: _isClicked2
                    ? [Colors.white, Colors.white]
                    : [Color(0xFFDEA057), Color(0xFFDEA057)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
              ),
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  // _isClicked2 = !_isClicked2;
                  pickFile(context);
                });
              },
              child: Icon(
                Icons.insert_drive_file,
                size: 120.0,
                color: _isClicked2 ? Color(0xFFDEA057) : Colors.white,
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
        color: Color(0xFF361500),
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

  Future<void> pickFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File fileToUpload = File(result.files.single.path!);
      String storagePath = '${result.files.single.name}';
      String url = '';
      var data;
      String output = 'cathegorie';

      await uploadFileToFirebaseStorage(fileToUpload, storagePath);

      url = 'http://192.168.43.250:5000/api?query=' + storagePath.toString();
      data = await fetchdata(url);
      var decoded = jsonDecode(data);
      output = decoded['output'];

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Your baby is:'),
            content: Text(output),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('No File Selected'),
            content: Text('Please select a file to upload.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> uploadFileToFirebaseStorage(File file, String storagePath) async {
  try {
    FirebaseStorage storage = FirebaseStorage.instance;

    // Create a reference to the file location in Firebase Storage
    Reference storageReference = storage.ref().child(storagePath);

    // Upload the file to Firebase Storage
    await storageReference.putFile(file);

    print('File uploaded successfully!');
  } catch (e) {
    print('Error uploading file: $e');
  }
}
}
