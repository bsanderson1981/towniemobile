import 'package:flutter/material.dart';

//TODO format text counter to be same size as +1 -
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
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _counter = 0;

  int _bakerdoz = 0;

  //int _totalbagels = 0;

  void _incrementCounter() {
    setState(() {
      //track baker doz
      if (_counter == 13) {
        _bakerdoz++;
        _counter = 0;
      } else {
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      // check if zero do not go into -1
      if (_counter == 0) {
      } else {
        
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.add_circle),
            color: Colors.black,
            iconSize: 25,
            onPressed: _incrementCounter,
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          IconButton(
            icon: Icon(Icons.remove_circle),
            color: Colors.black,
            iconSize: 25,
            onPressed: _decrementCounter,
          ),
          Text(
            'Bakers Doz:  $_bakerdoz',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
