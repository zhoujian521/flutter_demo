import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget child;
  final GestureTapCallback onPressed;

  const Button({Key key, this.child, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: new Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          // color: Colors.lightGreen[500],
        ),
        child: child,
      ),
    );
  }
}
