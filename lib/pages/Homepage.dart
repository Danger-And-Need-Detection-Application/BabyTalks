import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:babytalk/widgets/HomeAppBar.dart';
import 'package:babytalk/widgets/ItemsWeidget.dart';



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