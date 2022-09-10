import 'package:flutter/cupertino.dart';

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final height = size.height;
    final width = size.width;
    final endHeight = height * 0.95;

    path.lineTo(0, height * 0.6);
    path.lineTo(width * 0.2, endHeight);
    path.quadraticBezierTo(
      width * 0.25,
      height,
      width * 0.3,
      endHeight,
    );
    path.lineTo(width, height * 0.4);
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
