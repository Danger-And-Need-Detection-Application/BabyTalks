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
                            color: Color(0xFFEDECF2),
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
                                            color: Color(0xFF4C35A5),
                                        ),
                                    ),
                                ),
                                ItemsWeidget(),
                            ],
                        ),
                    ),
                ],
            ),
        );
    }
}