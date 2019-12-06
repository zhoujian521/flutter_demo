import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/page/saved.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FirstPageState();
  }
}

class _FirstPageState extends State<FirstPage> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  void _pushSaved(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      return new SavedPage(
        saved: _saved,
      );
    }));
  }

  void _onTapRow(bool isSaved, WordPair pair) {
    setState(() {
      isSaved ? _saved.remove(pair) : _saved.add(pair);
    });
  }

  Widget _buildRow(WordPair pair) {
    bool _isSaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asCamelCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        _isSaved ? Icons.favorite : Icons.favorite_border,
        color: _isSaved ? Colors.red : null,
      ),
      onTap: () => _onTapRow(_isSaved, pair),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (BuildContext context, int index) {
        if (index.isOdd) return new Divider();
        int indexPath = index ~/ 2;
        if (indexPath >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[indexPath]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.accessibility),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.list),
            onPressed: () => _pushSaved(context),
          ),
        ],
      ),
      body: _buildSuggestions(),
    );
  }
}
