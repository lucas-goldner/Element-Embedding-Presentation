import 'package:flutter/cupertino.dart';

class FSGradients {
  static const LinearGradient titlePrimary = LinearGradient(
    colors: [
      Color.fromARGB(255, 125, 211, 252),
      Color.fromARGB(255, 165, 180, 252),
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
      Color.fromARGB(255, 4, 30, 60),
      Color.fromARGB(255, 4, 30, 60),
    ],
    stops: [0.1, 1.0],
  );

  static LinearGradient dynamicBackground(Brightness brightness) =>
      brightness == Brightness.dark ? backgroundDark : background;
}
