import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(
    backgroundColor: Colors.white,
    body: Center(
        child:
        Transform.rotate(
          angle: 270 * 3.14/180,
          child: CustomPaint(
            size: Size(300, 300),
            painter: Crystal(),
          ),
        )
    )
  )));
}

class Crystal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(250, 150);
    path.lineTo(60, 160);
    path.lineTo(50, 150);
    path.lineTo(60, 140);
    path.close();

    final fillPaint = Paint();
    fillPaint.color = Colors.blue;
    fillPaint.style = PaintingStyle.fill;

    canvas.drawPath(path, fillPaint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}