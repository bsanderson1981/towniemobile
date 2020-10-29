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
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: RedBox(),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: GreenBox(),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: IconBox(),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: TextBox(),
        ),
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class RedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(),
      ),
    );
  }
}

class GreenBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(),
      ),
    );
  }
}

int _counter = 0;

//OnPress Action Button updates counter
class IconBox extends StatefulWidget {
  @override
  _IconBoxState createState() => _IconBoxState();
}

//TODO need to get total field to see counter
//TODO need to get decrement widget icon working: mind <0 code needed
class _IconBoxState extends State<StatefulWidget> {
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          color: Colors.white,
          child: Center(
            child: Ink(
              decoration: const ShapeDecoration(
                color: Colors.lightBlue,
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: Icon(Icons.plus_one),
                color: Colors.white,
                iconSize: 25,
                onPressed: () {
                  setState(() {
                    
                    _counter += 10;
                    print('this is counter + $_counter');
                    //new TextBox(); not working....
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TextBox extends StatefulWidget {
  @override
  _TextBoxState createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  // int _counter = 6;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(),
      ),
    );
  }
}
