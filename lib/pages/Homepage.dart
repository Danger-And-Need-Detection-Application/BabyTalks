import 'package:flutter/materiel.dart';
import 'package:BABYTALKS/widgets/HomepageBar.dart';


class HomePage extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: ListView(
                children: [
                    HomeAppBar();
                ],
            ),
        );
    }
}