//TODO Screen Layouts
//TODO json pull and post 
//TODO where to send post to email sms for store to see
//TODO Update live db with fields add to test dp  retailp and mobileactive
//TODO Create batch process to generate json file from db nightly or on demain via a button
//TODO TEST code

import 'package:flutter/material.dart';
import 'Services.dart';
import 'Product.dart';
 
class JsonParseDemo extends StatefulWidget {
  //
  JsonParseDemo() : super();
 
  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}
 
class _JsonParseDemoState extends State<JsonParseDemo> {
  //
  List<User> _users;
  bool _loading;
 
  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getUsers().then((users) {
      setState(() {
        _users = users;
        _loading = false;
      });
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? 'Loading...' : 'Users'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: null == _users ? 0 : _users.length,
          itemBuilder: (context, index) {
            User user = _users[index];
            return ListTile(
              title: Text(user.name),
              subtitle: Text(user.email),
            );
          },
        ),
      ),
    );
  }
}