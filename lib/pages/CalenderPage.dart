import 'package:flutter/material.dart';
import 'package:babytalk/widgets/ItemAppBar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CalenderPage extends StatefulWidget{
    @override
    _CalenderPageState createState() => _CalenderPageState();
}
class _CalenderPageState extends State<CalenderPage>{
    DateTime today = DateTime.now();
    void _onDaySelected(DateTime day, DateTime focusedDay){
        setState(() {
            today = day;
        });
    }
    @override
    void initState(){
        super.initState();
    }
    @override
    Widget build(BuildContext context){
        return Scaffold(
        backgroundColor: Color(0xFFEDECF2),
        body: ListView(
            children: [
                ItemAppBar("Calender"),
                Container(
                    child: TableCalendar(
                        rowHeight: 50,
                        headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
                        availableGestures: AvailableGestures.all,
                        selectedDayPredicate: (day) => isSameDay(day, today),
                        focusedDay: today,
                        firstDay: DateTime.utc(2010,01,01),
                        lastDay: DateTime.utc(2030,12,12),
                        onDaySelected: _onDaySelected,
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
                        
                    }
                    
                },
                height: 50,
                color: Color(0xFF4C35A5),
                index: 2,
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