import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:babytalk/widgets/HomeAppBar.dart';
import 'package:babytalk/widgets/ItemsWeidget.dart';
import 'package:flutter/foundation.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return AnimatedSplashScreen(
      splash: 
       Column(
         children: [
           Image.asset(
                'assets/images/babytalks.png',
                width: 200, // Set the width
                height: 200, // Set the height
            ),
            Lottie.asset(
                'assets/images/loading-circles.json',
                width: 300, // Set the width
                height: 300, // Set the height
            ),
         ],
       ),
      backgroundColor: Color(0xFFFFE6E6),
      nextScreen: HomePage(),
      splashIconSize: 200,
      duration: 4000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.topToBottom,
      animationDuration: const Duration(seconds: 1),
    );
  }
}


class HomePage extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: ListView(
                children: [
                    HomeAppBar(),
                    Container(
                        // height: 500,
                        padding: EdgeInsets.only(top:15),
                        decoration: const BoxDecoration(
                            color: Color(0xFFF9E0BB),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35),
                                topRight: Radius.circular(35),
                            ),
                        ),
                        child: Column(
                            children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                                    child: const Text(
                                        "Might interest you",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            // color: Color(0xFFE8A9A9),
                                            color: Color(0xFF884A39),
                                        ),
                                    ),
                                ),
                                ItemsWeidget(),
                            ],
                        ),
                    ),
                ],
            ),
            bottomNavigationBar: CurvedNavigationBar(
                backgroundColor: Colors.transparent,
                onTap: (index){
                    if(index == 0){
                    
                    }else if(index == 1){
                        Navigator.pushNamed(context, "recordpage");
                    }else{
                        Navigator.pushNamed(context, "calenderpage");
                    }
                    
                },
                height: 50,
                color: Color(0xFF361500),
                index: 0,
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