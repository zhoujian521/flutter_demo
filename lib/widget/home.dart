import 'package:flutter/material.dart';
import 'package:flutter_demo/page/first.dart';
import 'package:flutter_demo/page/second.dart';
import 'package:flutter_demo/page/third.dart';
import 'package:flutter_demo/page/fourth.dart';

class Home extends StatefulWidget {
  final int index;

  const Home({Key key, this.index}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new IndexedStack(
      index: widget.index,
      children: <Widget>[
        new FirstPage(),
        new SecondPage(),
        new ThirdPage(),
        new FourthPage()
      ],
    );
  }
}
