//TODO Screen Layouts
//TODO json pull and post
//TODO where to send post to email sms for store to see
//TODO Update live db with fields add to test dp  retailp and mobileactive
//TODO Create batch process to generate json file from db nightly or on demain via a button
//TODO TEST code
//TODO spining on load bagel icon or sprit - make.
//TODO total bagels / breads order 
//TODO shopping card added
//TODO snackbar menu for as total add up pop up totals


import 'package:flutter/material.dart';
import 'Services.dart';
import 'Product.dart';
import 'bagelcounter.dart';

void main() => runApp(MyApp());

// #docregion MyApp
class MyApp extends StatelessWidget {
  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        // Add the 3 lines from here...
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Corben',
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ), // ... to here.
      home: JsonParseDemo(),
    );
  }
  // #enddocregion build
}

class JsonParseDemo extends StatefulWidget {
  //
  JsonParseDemo() : super();

  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  //
  List<Product> _product;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getUsers().then((product) {
      setState(() {
        _product = product;
        _loading = false;
      });
    });
  }
  //TODO find day of week to only see items available on day:
  //DateTime date = DateTime.now();
  //print("weekday is ${date.weekday}");
//TODO Add quantiy field of 1 - 6 , default 0 ,to bagel and breads

//TODO Bottom total of item and price.  Tax not included

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? 'Loading...' : 'Bagels & Breads'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,
            thickness: 2,
          ),
          itemCount: null == _product ? 0 : _product.length,
          itemBuilder: (context, index) {
            Product product = _product[index];
            return ListTile(
             // leading: Icon(Icons.plus_one),
             // trailing: Icon(Icons.exposure_minus_1),
              title: Text(product.pname,
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500)), 
                      // product name

              subtitle: Text('\$ ' + (product.retailp.toStringAsFixed(2) + '  each'),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400)),
                      //PRICE OF ITEM 

              //TODO icon holder for adding quantiy selector for bagels 1-6 dropdown.dart  file called here
             /*  trailing: Icon(
                Icons.online_prediction_rounded,
                color: Colors.blue,
                size: 36.0,
              ), */

               trailing: SizedBox(width: 150, child: CounterWidget()), 
              
              
            );
          },
        ),
      ),
    );
  }
}
