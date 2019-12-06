import 'package:flutter/material.dart';
import 'package:flutter_demo/page/other1.dart';
import 'package:flutter_demo/widget/home.dart';
import 'package:flutter_demo/widget/my_navigation_bar.dart';
import 'package:flutter/rendering.dart';

class Root extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _RootState();
  }
}

class _RootState extends State<Root> {
  int _currentIndex = 1;

  void _onTapIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    // debugPaintSizeEnabled = true;
  }

  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
      title: 'Startup Name Generator',
      theme: new ThemeData(
        primaryColor: Colors.blue,
        textSelectionColor: Colors.red,
      ),
      home: new Scaffold(
        drawer: new Drawer(
          child: new Other1Page(),
        ),
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
