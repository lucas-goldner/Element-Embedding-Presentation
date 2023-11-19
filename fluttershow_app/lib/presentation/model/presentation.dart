import 'package:flutter/material.dart';
import 'package:flutter_show/presentation/config/cursor_style.dart';

@immutable
class Presentation {
  const Presentation({
    required this.animationIndex,
    required this.page,
    required this.locale,
    required this.brightness,
    required this.menuOpen,
    required this.pageController,
    this.cursorStyle = CursorStyle.basic,
  });

  final int animationIndex;

  /// Tracks the current slide in the presentation.
  final int page;

  /// Represents the locale used for internationalization and localization.
  final Locale locale;

  /// Represents the brightness mode of the application (light or dark).
  final Brightness brightness;

  /// Sets the current mouse style.
  final CursorStyle cursorStyle;

  /// Indicates whether the menu is open or closed.
  final bool menuOpen;

  /// Manages the page navigation in the presentation slides.
  final PageController pageController;

  Presentation copyWith({
    int? animationIndex,
    int? page,
    Locale? locale,
    bool? menuOpen,
    Brightness? brightness,
    CursorStyle? cursorStyle,
  }) {
    return Presentation(
      animationIndex: animationIndex ?? this.animationIndex,
      page: page ?? this.page,
      locale: locale ?? this.locale,
      brightness: brightness ?? this.brightness,
      cursorStyle: cursorStyle ?? this.cursorStyle,
      menuOpen: menuOpen ?? this.menuOpen,
      pageController: pageController,
    );
  }
}
