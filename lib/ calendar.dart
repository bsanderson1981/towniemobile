import 'package:flutter/material.dart';

//TODO format text counter to be same size as +1 -
//TODO Block all tuesdays from pickup dates
//TODO how to i track counts for 13 types of bagels and breads in window
//TODO  in SnackBar menu: need bagel count to show bakers dozen   1 bdoz + 7 bagels total

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calendarpicker(),
    );
  }
}



class Calendarpicker extends StatefulWidget {
  @override
  _CalendarpickerState createState() => _CalendarpickerState();
}

class _CalendarpickerState extends State<Calendarpicker> {

   var now = new DateTime.now(); //format 2020-10-30 21:58:45.430
  
  


  @override
  Widget build(BuildContext context) {
    return Container(
      child:CalendarDatePicker(initialDate: DateTime.now() , firstDate: null, lastDate: null, onDateChanged: null),
      
    //print(now), // prints "101"
    );
  }
}