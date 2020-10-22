//TODO Screen Layouts
//TODO json pull and post 
//TODO where to send post to email sms for store to see
//TODO Update live db with fields add to test dp  retailp and mobileactive
//TODO Create batch process to generate json file from db nightly or on demain via a button
//TODO TEST code


import 'package:flutter/material.dart';
import 'Services.dart';
import 'Product.dart';


void main() => runApp(MyApp());

// #docregion MyApp
class MyApp extends StatelessWidget {
  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(          // Add the 3 lines from here... 
        primaryColor: Colors.red,
      ),                         // ... to here.
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
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? 'Loading...' : 'Products'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: null == _product ? 0 : _product.length,
          itemBuilder: (context, index) {
            Product product = _product[index];
            return ListTile(
              title: Text(product.pname),
              subtitle: Text(product.retailp.toStringAsFixed(2)),
              
            );
          },
        ),
      ),
    );
  }
}