import 'package:flutter/material.dart';
import 'package:flutter_demo/page/other.dart';
// import 'package:flutter_demo/widget/my_canvas.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SecondPageState();
  }
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    super.initState();
  }

  void _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    prefs.setInt('counter', counter);
  }

  void _onPressed(BuildContext context) {
    Navigator.of(context).push(
      new MaterialPageRoute(builder: (context) {
        return new OtherPage();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('second'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.access_time),
            onPressed: () => _onPressed(context),
          )
        ],
      ),
      body: new Container(
        child: Column(
          children: <Widget>[
            new InkWell(
              child: new Text('Increment Counter'),
              onTap: _incrementCounter,
            )
          ],
        ),
      ),
    );
  }
}

// new MyCanvas(),

// Stack(
//   alignment: const Alignment(0, 0),
//   children: <Widget>[
//     CircleAvatar(
//       backgroundImage: NetworkImage(
//           "https://avatars3.githubusercontent.com/u/14101776?v=4"),
//     ),
//     Container(
//       decoration: BoxDecoration(
//         color: Colors.black45,
//       ),
//       child: Text('000000000000'),
//     ),
//     Container(
//       decoration: BoxDecoration(
//         color: Colors.black45,
//       ),
//       child: Text('1111111111111'),
//     ),
//   ],
// ),

// new Stack(
//   alignment: const Alignment(0.0, 0.0),
//   children: [
//     new CircleAvatar(
//       backgroundImage: new AssetImage('images/lake.jpg'),
//       radius: 40.0,
//     ),
//     new Container(
//       decoration: new BoxDecoration(
//         color: Colors.black45,
//       ),
//       child: new Text(
//         'Mia B',
//         style: new TextStyle(
//           fontSize: 20.0,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//       ),
//     ),
//   ],
// ),
