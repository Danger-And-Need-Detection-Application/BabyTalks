import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Container(
            color: Colors.white ,
            padding: EdgeInsets.all(25),
            child: Row(
                children: [
                    InkWell(
                        onTap: () {
                            Navigator.pushNamed(context, "itemPage");
                        },
                        child: const Icon (
                        Icons.sort ,
                        size: 30 ,
                        color: Color(0xFF361500),
                    ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(
                            left: 20,
                        ),
                        child: Text(
                            "Baby Talks",
                            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,color: Color(0xFF361500),),
                        ),
                    ),
                    Spacer(),
                    Badge(
                        child: InkWell(
                            onTap: (){
                                Navigator.pushNamed(context, '/Homepage');
                            },
                            child: const Icon(
                                Icons.baby_changing_station,
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}
