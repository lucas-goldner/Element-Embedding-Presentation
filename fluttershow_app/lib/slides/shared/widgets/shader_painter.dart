import 'dart:ui';

import 'package:flutter/material.dart';

class ShaderPainter extends CustomPainter {
  ShaderPainter(FragmentShader fragmentShader, this.time)
      : shader = fragmentShader;
  final FragmentShader shader;
  final double time;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    shader
      ..setFloat(0, size.width)
      ..setFloat(1, size.height)
      ..setFloat(2, time);
    paint.shader = shader;
    canvas.drawRect(Offset.zero & size, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
