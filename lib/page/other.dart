import 'package:flutter/material.dart';
import 'package:flutter_demo/page/other1.dart';
import 'package:flutter_demo/page/other2.dart';

class OtherPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _OtherPageState();
  }
}

class _OtherPageState extends State<OtherPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _controller = TabController(length: 2, vsync: this);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('OtherPage'),
      ),
      bottomNavigationBar: new Material(
        color: Colors.red,
        child: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.person)),
            Tab(icon: Icon(Icons.email)),
          ],
          controller: _controller,
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new Other1Page(),
          new Other2Page(),
        ],
        controller: _controller,
      ),
    );
  }
}
