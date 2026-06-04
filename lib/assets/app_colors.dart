import 'package:flutter/material.dart';

abstract final class AppColors {

  AppColors._();
  // Gold Tones
  static const Color gold = Color(0xFFC9A84C);
  static const Color lightGold = Color(0xFFF0D080);
  static const Color darkGold = Color(0xFF8B6914);

  // Background & Dark Tones
  static const Color darkestBackground = Color(0xFF0A0612);
  static const Color background = Color(0xFF100A20);
  static const Color backgroundVariant = Color(0xFF0E0818);

  static const Color cardBackground = Color(0xFF1A1030);
  static const Color verseCardBackground = Color(0xFF160E2A);
  static const Color savedCardBackground = Color(0xFF1E1338);

  // Purple Tones
  static const Color purpleBase = Color(0xFF2D1B4E);
  static const Color purpleLight = Color(0xFF3D2A6E);
  static const Color accentPurple = Color(0xFF7C3AED);
  static const Color darkPurple = Color(0x407C3AED);

  static const Color wheelSegmentDark = Color(0xFF200B38);
  static const Color wheelSegmentAlternate = Color(0xFF1A0A30);

  // Text Colors
  static const Color textPrimary = Color(0xFFF5EFD8);
  static const Color textSecondary = Color(0xFFEDE0BC);
  static const Color textMuted = Color(0xFF9B8A6E);

  // Gradients
  static const LinearGradient goldGradient = LinearGradient(
    colors: [
      gold,
      darkGold,
    ],
  );

  static const LinearGradient purpleGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromRGBO(45, 27, 78, 0.6),
      Color.fromRGBO(45, 27, 78, 0.6),
    ],
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      darkestBackground,
      background,
      backgroundVariant,
    ],
  );

  static const LinearGradient cardGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      verseCardBackground,
      savedCardBackground,
      verseCardBackground,
    ],
  );
}
