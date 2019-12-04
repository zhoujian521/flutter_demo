import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatefulWidget {
  final Set<WordPair> saved;

  const SavedPage({Key key, this.saved}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _SavedPageState();
  }
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    final _biggerFont = const TextStyle(fontSize: 18.0);
    final tiles = widget.saved.map(
      (pair) => new ListTile(
        title: new Text(
          pair.asCamelCase,
          style: _biggerFont,
        ),
      ),
    );
    final divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Saved Suggestions'),
      ),
      body: new ListView(
        children: divided,
      ),
    );
  }
}
