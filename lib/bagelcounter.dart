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
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _ecounter = 0;

  int _bakerdoz = 0;

  int _totalbagels = 0;

  void _incrementCounter() {
    setState(() {
      //track increament   ~/ finds just total bager doz of 13
      // %  check total for multiple of 13 and return single
      // non bakers doz totals back
      // TB = 16     BDz = 1   and Bagels = 3 for example...

      _totalbagels++;
      _bakerdoz = (_totalbagels ~/ 13);
      _ecounter = (_totalbagels % 13);
    });
  }

  void _decrementCounter() {
    setState(() {
      
      if (_totalbagels == 0) {

          // check if zero do not go into -1

      } else {
        _totalbagels--;
        _bakerdoz = (_totalbagels ~/ 13);
        _ecounter = (_totalbagels % 13);
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
            '$_ecounter',
            style: Theme.of(context).textTheme.headline4,
          ),
          IconButton(
            icon: Icon(Icons.remove_circle),
            color: Colors.black,
            iconSize: 25,
            onPressed: _decrementCounter,
          ),
          Row(
            children: [
              Text(
                'BDz:$_bakerdoz',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                ' TB=:$_totalbagels',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
