import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/random_words.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      home: new RandomWords(),
    );
  }
}
