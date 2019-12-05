import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThirdPageState();
  }
}

class _ThirdPageState extends State<ThirdPage> {
  void onPress(key) {
    print('~~~~~~~~~~$key~~~~~~~');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('third'),
        leading: new Container(child: null),
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            _buildImageSection(),
            _buildTitleSection(),
            _buildActionsSection(context, onPress),
            _buildTextSection(),
          ],
        ),
      ),
    );
  }
}

Widget _buildImageSection() {
  return new Image.asset(
    'images/lake.jpg',
    height: 240.0,
    fit: BoxFit.cover,
  );
}

Widget _buildTitleSection() {
  return new Container(
    padding: const EdgeInsets.all(25.0),
    child: new Row(
      children: <Widget>[
        new Expanded(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                'Oeschinen Lake Campground',
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              new Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
              ),
              new Text(
                'Kandersteg, Switzerland',
                style: new TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        new Padding(
          padding: const EdgeInsets.only(bottom: 3.0, right: 8.0),
          child: new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
        ),
        new Text('41'),
      ],
    ),
  );
}

Widget _buildButton(BuildContext context, IconData icon, String title, onTap) {
  Color color = Theme.of(context).primaryColor;
  return new InkWell(
    onTap: () => onTap(title),
    child: new Column(
      children: <Widget>[
        new Icon(icon, color: color),
        new Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: new Text(
            title,
            style: new TextStyle(
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildActionsSection(BuildContext context, onPress) {
  void onTap(key) => onPress(key);

  return new Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _buildButton(context, Icons.call, 'CALL', onTap),
      _buildButton(context, Icons.near_me, 'ROUTE', onTap),
      _buildButton(context, Icons.share, 'SHARRE', onTap),
    ],
  );
}

Widget _buildTextSection() {
  return new Padding(
    padding: const EdgeInsets.all(25.0),
    child: new Text(
      '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
      softWrap: true,
    ),
  );
}
