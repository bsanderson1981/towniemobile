import 'package:flutter/material.dart';

//hi

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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Row(
      children: [
        IconButton(
          icon: Icon(Icons.plus_one),
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
     
        ],
     
      ),


     
     
    );




    
  
  }
}

