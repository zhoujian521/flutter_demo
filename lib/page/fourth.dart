import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  final List<Widget> list = <Widget>[
    new ListTile(
      title: new Text(
        'CineArts at the Empire',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
      ),
      subtitle: new Text('85 W Portal Ave'),
      leading: new Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    new ListTile(
      title: new Text(
        'The Castro Theater',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
      ),
      subtitle: new Text('429 Castro St'),
      leading: new Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    new Image.network('https://flutter.io/images/owl.jpg'),
  ];

  final card = new SizedBox(
    height: 230.0,
    child: new Card(
      child: new Column(
        children: [
          new ListTile(
            title: new Text('1625 Main Street',
                style: new TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('My City, CA 99984'),
            leading: new Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          new Divider(),
          new ListTile(
            title: new Text('(408) 555-1212',
                style: new TextStyle(fontWeight: FontWeight.w500)),
            leading: new Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          new Divider(),
          new ListTile(
            title: new Text('costa@example.com'),
            leading: new Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('fourth'),
        leading: new Container(child: null),
      ),
      body: new Center(
          child: new Column(
        children: <Widget>[
          new Expanded(
            flex: 1,
            child: new ListView(
              children: list,
            ),
          ),
          new Expanded(
            flex: 1,
            child: new Center(
              child: new Column(
                children: <Widget>[
                  card,
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
