import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
    backgroundColor: Colors.white,
    body: Center(
        child:Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //A top crystal
                Transform.rotate(
                  angle: 270 * 3.14/180,
                  child: CustomPaint(
                    size: Size(100, 100),
                    painter: Crystal(),
                  ),
                ),
                SizedBox(height: 225),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //A left crystal
                    Transform.rotate(
                      angle: 180 * 3.14/180,
                      child: CustomPaint(
                        size: Size(100, 100),
                        painter: Crystal(),
                      ),
                    ),
                    SizedBox(width: 550),
                    //A right crystal
                    Transform.rotate(
                      angle: 0 * 3.14/180,
                      child: CustomPaint(
                        size: Size(100, 100),
                        painter: Crystal(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 225),
                //A bottom crystal
                Transform.rotate(
                  angle: 90 * 3.14/180,
                  child: CustomPaint(
                    size: Size(100, 100),
                    painter: Crystal(),
                  ),
                ),
              ],
            ),
            CustomPaint(
              size: Size(450, 450),
              painter: Circle(),
            ),
            Transform.rotate(
                angle: 45 * 3.14/180,
                child: CustomPaint(
                  size: Size(300, 300),
                  painter: Cross(),
                )
            ),
            Transform.rotate(
                angle: 0 * 3.14/180,
                child: CustomPaint(
                  size: Size(700, 700),
                  painter: Cross(),
                )
            ),
          ],
        ),
    )
  )));
}

class Crystal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    path.moveTo(centerX + size.width * 0.4, centerY);
    path.lineTo(centerX - size.width * 0.4, centerY + 10);
    path.lineTo(centerX - size.width * 0.4 - 10, centerY);
    path.lineTo(centerX - size.width * 0.4, centerY - 10);
    path.close();

    final fillPaint = Paint();
    fillPaint.color = Colors.blue;
    fillPaint.style = PaintingStyle.fill;

    canvas.drawPath(path, fillPaint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class Cross extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    path.moveTo(centerX + size.width * 0.5, centerY + size.height * 0.5); //Right and bottom
    path.lineTo(centerX + size.width * 0.1, centerY);
    path.lineTo(centerX + size.width * 0.5, centerY - size.height * 0.5); //Right and top
    path.lineTo(centerX, centerY - size.height * 0.1);
    path.lineTo(centerX - size.width * 0.5, centerY - size.height * 0.5); //Left and top
    path.lineTo(centerX - size.width * 0.1, centerY);
    path.lineTo(centerX - size.width * 0.5, centerY + size.height * 0.5); //Left and bottom
    path.lineTo(centerX, centerY + size.height * 0.1);
    path.close();

    final fillPaint = Paint();
    fillPaint.color = Colors.blue;
    fillPaint.style = PaintingStyle.fill;

    canvas.drawPath(path, fillPaint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class Circle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint();
    paint.color = Colors.blue;
    paint.strokeWidth = 10;
    paint.style = PaintingStyle.stroke;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2,
      paint,
    );
  }
  @override
  bool shouldRepaint(CustomPainter oodDelegate) => false;
}