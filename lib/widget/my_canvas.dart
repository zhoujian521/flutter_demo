import 'package:flutter/material.dart';

class MyCanvas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyCanvasState();
  }
}

class _MyCanvasState extends State<MyCanvas> {
  @override
  Widget build(BuildContext context) {
    return new CustomPaint(
      painter: new MyCanvasPainter(),
    );
  }
}

class MyCanvasPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Circle
    Paint paint = Paint();
    paint.color = Colors.amber;
    canvas.drawCircle(Offset(100.0, 200.0), 50.0, paint);
    // Rect
    Paint paintRect = Paint();
    paintRect.color = Colors.lightBlue;
    Rect rect = Rect.fromPoints(Offset(200.0, 300.0), Offset(400.0, 400.0));
    canvas.drawRect(rect, paintRect);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) {
    return false;
  }
}
