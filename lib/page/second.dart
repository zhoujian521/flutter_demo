import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/button.dart';
import 'package:flutter_demo/widget/my_app_bar.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new MyAppBar(
          title: new Text(
            'second',
            style: new TextStyle(fontSize: 22.0, color: Colors.white),
          ),
        ),
        new Expanded(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text('Hello World!!!'),
                new Button(
                  child: new Text('bttton'),
                  onPressed: () => print('~~~~~~~'),
                ),
                new RaisedButton(
                  child: new Text('Increment'),
                  onPressed: () => print('~~Increment~~~~~'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
