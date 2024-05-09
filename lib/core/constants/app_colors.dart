import 'package:flutter/material.dart';

class AppColors {
  /// App theme colors
  static const Color primary = Color(0xFF261863);
  static const Color secondary = Color(0xFFA8A3C1);
  static const Color accent = Color(0xFFD975BB);

  /// Gradiant Colors
  static const linearBackgroundGradiant = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0, 1),
    colors: [
      Color(0xFF131B63),
      Color(0xFF131B63),
      Color(0xFF131B63),
      Color(0xFF481162),
    ],
  );

  static const linearButtonGradiant = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFB971A3),
      Color(0xFFA03E82),
      Color(0xFFA03E82),
    ],
  );

  static const linearCircleGradiant = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF8462E1),
      Color(0xFF55389B),
      Color(0xFF351B6F),
    ],
  );
}