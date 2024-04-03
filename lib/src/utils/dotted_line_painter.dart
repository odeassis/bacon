import 'package:flutter/material.dart';

class DottedLinePainter extends CustomPainter {
  final Color? color;

  DottedLinePainter({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color ?? Colors.black
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round;

    const double dashWidth = 5;
    const double dashSpace = 5;
    double currentX = 0;

    while (currentX < size.width) {
      canvas.drawLine(
          Offset(currentX, 0), Offset(currentX + dashWidth, 0), paint);
      currentX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
