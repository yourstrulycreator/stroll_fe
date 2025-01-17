import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
  
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
  
  bool get isDarkMode => theme.brightness == Brightness.dark;
} 