import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MyNavigationBar({Key key, this.currentIndex, this.onTap})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _MyNavigationBarState();
  }
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(
          title: Text('001'),
          icon: new Icon(Icons.favorite),
        ),
        new BottomNavigationBarItem(
          title: Text('002'),
          icon: new Icon(Icons.access_time),
        ),
        new BottomNavigationBarItem(
          title: Text('003'),
          icon: new Icon(Icons.account_circle),
        ),
        new BottomNavigationBarItem(
          title: Text('004'),
          icon: new Icon(Icons.access_alarms),
        ),
      ],
      fixedColor: Theme.of(context).primaryColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
    );
  }
}
