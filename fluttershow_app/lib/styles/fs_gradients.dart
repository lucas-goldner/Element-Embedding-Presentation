import 'package:flutter/cupertino.dart';

class FSGradients {
  static const LinearGradient titlePrimary = LinearGradient(
    colors: [
      Color(0xFFFF57DD),
      Color(0xFF56C2FF),
    ],
  );

  static const LinearGradient background = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      CupertinoColors.systemBackground,
      Color(0xFFCDDCF6),
    ],
    stops: [0.5, 1.0],
  );

  static const LinearGradient backgroundDark = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF020202),
      Color(0xFF333333),
    ],
    stops: [0.1, 1.0],
  );

  static LinearGradient dynamicBackground(Brightness brightness) =>
      brightness == Brightness.dark ? backgroundDark : background;
}
