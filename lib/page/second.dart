import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('second'),
        leading: new Container(child: null),
      ),
      body: new Center(
        child: new Text('second'),
      ),
    );
  }
}