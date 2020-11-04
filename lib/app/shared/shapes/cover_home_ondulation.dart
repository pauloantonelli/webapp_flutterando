import 'package:flutter/material.dart';

class CoverHomeOndulation extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color(0xff090b0d)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.75);
    path_0.quadraticBezierTo(
        size.width * 0.13, size.height * 1.00, size.width * 0.35, size.height);
    path_0.cubicTo(size.width * 0.55, size.height * 0.99, size.width * 0.64,
        size.height * 0.91, size.width * 0.76, size.height * 0.80);
    path_0.quadraticBezierTo(
        size.width * 0.84, size.height * 0.74, size.width, size.height * 0.85);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height * 0.75);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
