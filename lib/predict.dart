import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';


  Color nudeColor = Color(0xFFECE5DD).withOpacity(0.5);
class Predict extends StatefulWidget {
  const Predict({Key? key}) : super(key: key);

  @override
  _PredictState createState() => _PredictState();
}

class _PredictState extends State<Predict> {
  final recorder = FlutterSoundRecorder();
  bool isRecorderReady = false;

  @override
  void initState(){
    super.initState();
    initRecorder();
  }
  @override
  void dispose(){
    recorder.closeRecorder();
    super.dispose();
  }
  Future initRecorder() async {
    final status = await Permission.microphone.request();
    if(status != PermissionStatus.granted){
      throw 'Microphone permission not granted';
    }
    await recorder.openRecorder();
    isRecorderReady = true;

    recorder.setSubscriptionDuration(
      const Duration(milliseconds: 500),
    );
  }

  Future record() async {
    if(!isRecorderReady) return;
    await recorder.startRecorder(toFile: 'audio');
  }
  Future stop() async {
    if(!isRecorderReady) return;
    final path = await recorder.stopRecorder();
    final audioPath = File(path!);
    print('Recorded audio: $audioPath');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Baby Talks"),
        backgroundColor: nudeColor,
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Expanded(
                child: Image.asset('./../assets/babytalks.png'),
            ),
            StreamBuilder<RecordingDisposition>(
              stream: recorder.onProgress,
              builder: (context, snapshot){
                final duration = snapshot.hasData ? snapshot.data!.duration : Duration.zero;
                return Text('${duration.inSeconds} s');
              },
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(50.0),
                ),
                child: ElevatedButton(
                  child: Icon(
                    recorder.isRecording ? Icons.mic : Icons.stop,
                    size: 80,
                  ),
                  onPressed: () async {
                    if(recorder.isRecording){
                      await stop();
                    }else{
                      await record();
                    }
                  }
                ),
                // SizedBox(
                //     width: 70.0,
                //     height: 70.0,
                //     child: IconButton(
                //     onPressed: () async {
                      
                //     },
                //     icon: Icon(Icons.mic),
                //     color: Colors.white,
                //     iconSize: 40.0,
                //     ),
                // ),
            ),
        ],
      ),
      ),
    );
  }
}
