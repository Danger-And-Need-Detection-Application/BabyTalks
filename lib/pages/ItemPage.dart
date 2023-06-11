import 'package:flutter/material.dart';
import 'package:babytalk/widgets/ItemAppBar.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ItemPage extends StatelessWidget{
    @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Color(0xFFF9E0BB),
        body: ListView(
            children: [
                ItemAppBar("Article"),
                Padding(
                    padding: EdgeInsets.all(16),
                    child: Image(
                    image: AssetImage('assets/images/1.jpg'),
                    height: 200,
                    width: 300,
                  ),
                ),
                Arc(
                    edge: Edge.TOP,
                    arcType: ArcType.CONVEY,
                    height: 30,
                    child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                                children:[
                                    Padding(
                                        padding: EdgeInsets.only(top: 50, bottom:20),
                                        child: Row(
                                            children: [
                                                Text(
                                                    "Article Title",
                                                    style: TextStyle(
                                                        fontSize: 28,
                                                        color: Color(0xFF361500),
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(vertical: 12),
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.  \n",
                                        )
                                    )
                                ],
                            ),
                        ),
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
}