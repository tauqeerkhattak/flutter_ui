import 'package:flutter/material.dart';

class AppBarPainter extends CustomPainter {
  final Color? color;

  AppBarPainter({this.color});
  @override
  Canvas paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color ?? Colors.amber
      ..strokeWidth = 6;

    final height = size.height;
    final width = size.width;
    final endHeight = height * 0.95;
    const shadowWidth = 2.5;

    Path path = Path();
    Path shadowPath = Path();
    path.lineTo(0, height * 0.6);
    shadowPath.lineTo(0, height * 0.6 + shadowWidth);
    path.lineTo(width * 0.2, endHeight);
    shadowPath.lineTo(width * 0.2, endHeight + shadowWidth);
    path.quadraticBezierTo(
      width * 0.25,
      height,
      width * 0.3,
      endHeight,
    );
    shadowPath.quadraticBezierTo(
      width * 0.25,
      height,
      width * 0.3,
      endHeight + shadowWidth,
    );
    path.lineTo(width, height * 0.4);
    shadowPath.lineTo(width, height * 0.4 + shadowWidth);
    path.lineTo(width, 0);
    shadowPath.lineTo(width, 0);
    canvas.drawShadow(shadowPath, Colors.black, 2.0, true);
    canvas.drawPath(path, paint);
    return canvas;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
