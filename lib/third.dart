import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: new MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var card = new SizedBox(
      height: 224.0,
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
              title: new Text(
                '(408) 555-1212',
              ),
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

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Card'),
      ),
      body: new Center(
        child: card,
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Welcome to Flutter',
//         theme: ThemeData(
//           primarySwatch: Colors.cyan,
//         ),
//         home: new MyHomePage());
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return new MyHomePageState();
//   }
// }

// class MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {

//     var stack = new Stack(
//       alignment: const Alignment(0.0, 0.0),
//       children: [
//         new CircleAvatar(
//           backgroundImage: new AssetImage('images/lake.jpg'),
//           radius: 100.0,
//         ),
//         new Container(
//           decoration: new BoxDecoration(
//             color: Colors.black45,
//           ),
//           child: new Text(
//             'Mia B',
//             style: new TextStyle(
//               fontSize: 20.0,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ],
//     );

//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('GridView'),
//       ),
//       body: new Center(
//         child: stack,
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Welcome to Flutter',
//         theme: ThemeData(
//           primarySwatch: Colors.cyan,
//         ),
//         home: new MyHomePage());
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return new MyHomePageState();
//   }
// }

// List<Widget> list = <Widget>[
//   new ListTile(
//     title: new Text('CineArts at the Empire',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('85 W Portal Ave'),
//     leading: new Icon(
//       Icons.theaters,
//       color: Colors.blue[500],
//     ),
//   ),
//   new ListTile(
//     title: new Text('The Castro Theater',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('429 Castro St'),
//     leading: new Icon(
//       Icons.theaters,
//       color: Colors.blue[500],
//     ),
//   ),
//   new ListTile(
//     title: new Text('The Theater',
//         style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
//     subtitle: new Text('29'),
//     leading: new Icon(
//       Icons.theaters,
//       color: Colors.blue[500],
//     ),
//   )
// ];

// class MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('GridView'),
//       ),
//       body: new Center(
//         child: new ListView(
//           children: list,
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Welcome to Flutter',
//         theme: ThemeData(
//           primarySwatch: Colors.cyan,
//         ),
//         home: new MyHomePage());
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return new MyHomePageState();
//   }
// }

// class MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('GridView'),
//       ),
//       body: new Center(
//         child: buildGrid(),
//       ),
//     );
//   }

//   Widget buildGrid() {
//     return new GridView.extent(
//         maxCrossAxisExtent: 150.0,
//         padding: const EdgeInsets.all(4.0),
//         mainAxisSpacing: 4.0,
//         crossAxisSpacing: 4.0,
//         children: _buildGridTileList(30));
//   }

//   List<Container> _buildGridTileList(int count) {
//     return new List<Container>.generate(
//         count,
//         (int index) => new Container(
//             child: new Column(
//               children: <Widget>[
//                 new Image.asset('images/lake.jpg'),
//                 new Text('标题',
//                 style: new TextStyle(
//                   fontSize: 12.0
//                 ),
//                 ),
//               ],
//             )
//             ));
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Welcome to Flutter',
//         theme: ThemeData(
//           primarySwatch: Colors.cyan,
//         ),
//         home: new MyHomePage());
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return new MyHomePageState();
//   }
// }

// class MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var container = new Container(
//       decoration: new BoxDecoration(
//         color: Colors.black26,
//       ),
//       child: new Column(
//         children: [
//           new Row(
//             children: [
//               new Expanded(
//                 child: new Container(
//                   decoration: new BoxDecoration(
//                     border: new Border.all(width: 10.0, color: Colors.black38),
//                     borderRadius:
//                         const BorderRadius.all(const Radius.circular(8.0)),
//                   ),
//                   margin: const EdgeInsets.all(4.0),
//                   child: new Image.asset('images/lake.jpg'),
//                 ),
//               ),
//               new Expanded(
//                 child: new Container(
//                   decoration: new BoxDecoration(
//                     border: new Border.all(width: 10.0, color: Colors.black38),
//                     borderRadius:
//                         const BorderRadius.all(const Radius.circular(8.0)),
//                   ),
//                   margin: const EdgeInsets.all(4.0),
//                   child: new Image.asset('images/lake.jpg'),
//                 ),
//               ),
//             ],
//           ),
//           new Row(
//             children: [
//               new Expanded(
//                 child: new Container(
//                   decoration: new BoxDecoration(
//                     border: new Border.all(width: 10.0, color: Colors.black38),
//                     borderRadius:
//                         const BorderRadius.all(const Radius.circular(8.0)),
//                   ),
//                   margin: const EdgeInsets.all(4.0),
//                   child: new Image.asset('images/lake.jpg'),
//                 ),
//               ),
//               new Expanded(
//                 child: new Container(
//                   decoration: new BoxDecoration(
//                     border: new Border.all(width: 10.0, color: Colors.black38),
//                     borderRadius:
//                         const BorderRadius.all(const Radius.circular(8.0)),
//                   ),
//                   margin: const EdgeInsets.all(4.0),
//                   child: new Image.asset('images/lake.jpg'),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Container')
//       ),
//       body: container,
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     var packedRow = new Row(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         new Icon(Icons.star, color: Colors.green[500]),
//         new Icon(Icons.star, color: Colors.green[500]),
//         new Icon(Icons.star, color: Colors.green[500]),
//         new Icon(Icons.star, color: Colors.black),
//         new Icon(Icons.star, color: Colors.black)
//       ],
//     );
//     var ratings = new Container(
//       padding: new EdgeInsets.all(20.0),
//       child: new Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           new Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               new Icon(Icons.star, color: Colors.black),
//               new Icon(Icons.star, color: Colors.black),
//               new Icon(Icons.star, color: Colors.black),
//               new Icon(Icons.star, color: Colors.black),
//               new Icon(Icons.star, color: Colors.black),
//             ],
//           ),
//           new Text(
//             '170 Reviews',
//             style: new TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.w800,
//               fontFamily: 'Roboto',
//               letterSpacing: 0.5,
//               fontSize: 20.0,
//             ),
//           ),
//         ],
//       ),
//     );
//     var desTextStyle = new TextStyle(
//         color: Colors.black,
//         fontWeight: FontWeight.w800,
//         fontFamily: 'Roboto',
//         letterSpacing: 0.5,
//         fontSize: 18.0,
//         height: 2.0);
//     var iconList = DefaultTextStyle.merge(
//         style: desTextStyle,
//         child: new Container(
//           padding: new EdgeInsets.all(20.0),
//           child: new Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               new Column(
//                 children: [
//                   new Icon(Icons.kitchen, color: Colors.green[500]),
//                   new Text('PREP:'),
//                   new Text('25 min'),
//                 ],
//               ),
//               new Column(
//                 children: [
//                   new Icon(Icons.timer, color: Colors.green[500]),
//                   new Text('COOK:'),
//                   new Text('1 hr'),
//                 ],
//               ),
//               new Column(
//                 children: [
//                   new Icon(Icons.restaurant, color: Colors.green[500]),
//                   new Text('FEEDS:'),
//                   new Text('4-6'),
//                 ],
//               )
//             ],
//           ),
//         ));
//     var leftColumn = new Container(
//       padding: new EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
//       child: new Column(
//         children: <Widget>[ratings, iconList],
//       ),
//     );

//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primaryColor: Colors.blue,
//       ),
//       home: new Scaffold(
//         appBar: new AppBar(title: new Text('widget title')),
//         body: new Center(
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[packedRow, leftColumn],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primaryColor: Colors.blue,
//       ),
//       home: new Scaffold(
//         appBar: new AppBar(title: new Text('widget title')),
//         body: new Center(
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               new Expanded(
//                 child: new Image.asset('images/lake.jpg',
//                     width: 100.0, height: 100.0),
//               ),
//               new Expanded(
//                 flex: 2,
//                 child: new Image.asset('images/lake.jpg',
//                     width: 100.0, height: 100.0),
//               ),
//               new Expanded(
//                 child: new Image.asset('images/lake.jpg',
//                     width: 100.0, height: 100.0),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context){
//     return new Container(
//       decoration: new BoxDecoration(color: Colors.white),
//       child: new Center(
//         child: new Text('Hellow World',
//         textDirection: TextDirection.ltr,
//         style: new TextStyle(fontSize: 40.0, color: Colors.black87)),
//       ),
//     );
//   }
// }
