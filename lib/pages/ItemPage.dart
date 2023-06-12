import 'package:flutter/material.dart';
import 'package:babytalk/widgets/ItemAppBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

class ItemPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  ItemPage({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(title),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              image,
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
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 28,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        description,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, "homepage");
          } else if (index == 1) {
            Navigator.pushNamed(context, "recordpage");
          } else {
            Navigator.pushNamed(context, "calendarpage");
          }
        },
        height: 50,
        color: Color(0xFF4C35A5),
        index: 1,
        items: [
          Icon(
            Icons.home,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.mic,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.calendar_today,
            size: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
