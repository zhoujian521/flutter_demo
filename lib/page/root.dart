import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/home.dart';
import 'package:flutter_demo/widget/my_navigation_bar.dart';


class Root extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _RootState();
  }
}

class _RootState extends State<Root> {
  int _currentIndex = 0;
  void _onTapIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      home: new Scaffold(
        body: new Center(
            child: new Home(
          index: _currentIndex,
        )),
        bottomNavigationBar: new MyNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapIndex,
        ),
      ),
    );
  }
}
