import 'package:flutter/cupertino.dart';

class MyAppBar extends StatelessWidget {
  final Widget title;

  const MyAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return title;
  }
}
