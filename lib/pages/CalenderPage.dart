import 'package:flutter/material.dart';
import 'package:babytalk/widgets/ItemAppBar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class CalenderPage extends StatefulWidget{
    @override
    _CalenderPageState createState() => _CalenderPageState();
    // WidgetsFlutterBinding.ensureInitialized();
    
}
class _CalenderPageState extends State<CalenderPage>{
    DateTime today = DateTime.now();
     
    TimeOfDay? selectedDateTime;

    void _onDaySelected(DateTime day, DateTime focusedDay){
        setState(() {
            today = day;
        });
    }
    @override
    void initState(){
        super.initState();
        initializeNotifications();
    }
    @override
    Widget build(BuildContext context){
        return Scaffold(
        backgroundColor: Color(0xFFF9E0BB),
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
                Center(
          child: ElevatedButton(
            onPressed: () {
              showTimePickerDialog(context);
            },
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF361500), // Replace with your desired color
            ),
            child: Text(
                'Sélectionner une date'
                ),
          ),
        ),
        if (selectedDateTime != null)
            Center(
              child: Text(
                'Date et heure sélectionnées: ${selectedDateTime.toString()}',
                style: TextStyle(fontSize: 18),
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
                color: Color(0xFF361500),
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
Future<void> initializeNotifications() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('baby_talks');
  final InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);
  await FlutterLocalNotificationsPlugin().initialize(initializationSettings);

  tz.initializeTimeZones(); // Initialiser les fuseaux horaires
}

void showTimePickerDialog(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    
  }

  void scheduleNotification(DateTime selectedDate) async {
  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  // Convertir le fuseau horaire local en fuseau horaire du système
  print(tz.timeZoneDatabase.locations.keys);
  final timeZone = tz.getLocation('Africa/Abidjan');
  final scheduledDateTime = tz.TZDateTime.from(selectedDate, timeZone);

  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    'channel_description',
    importance: Importance.max,
    priority: Priority.high,
  );
  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);

  await flutterLocalNotificationsPlugin.zonedSchedule(
    0,
    'Rappel de date',
    'C\'est la date que vous avez sélectionnée !',
    scheduledDateTime,
    platformChannelSpecifics,
    androidAllowWhileIdle: true,
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
  );
}
