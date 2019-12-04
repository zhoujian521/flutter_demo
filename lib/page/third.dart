import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('third'),
        leading: new Container(child: null),
      ),
      body: new Center(
        child: new Text('third'),
      ),
    );
  }
}