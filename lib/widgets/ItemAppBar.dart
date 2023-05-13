import 'package:flutter/material.dart';

class ItemAppBar extends StatefulWidget {
  @override
  _ItemAppBarState createState() => _ItemAppBarState();
  final String title;
  ItemAppBar(this.title);
}

class _ItemAppBarState extends State<ItemAppBar> {
  bool _isFavorite = false;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: 30, color: Color(0xFF4C53A5)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              setState(() {
                _isFavorite = !_isFavorite;
              });
            },
            child: Icon(
              _isFavorite ? Icons.favorite : Icons.favorite_border,
              size: 30,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
