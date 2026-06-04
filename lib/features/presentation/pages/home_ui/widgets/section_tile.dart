import 'package:flutter/material.dart';
import 'package:vachanapetty/assets/app_colors.dart';
import 'package:vachanapetty/assets/assets.dart';
import 'package:vachanapetty/core/enum/font_family.dart';

class SectionTile extends StatelessWidget {
  final String? label;
  const SectionTile({super.key, this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label ?? Assets.sectionHeader.toUpperCase(),
      style: TextStyle(
          letterSpacing: 2.0,
          fontFamily: FontFamily.cinzel.family,
          fontSize: 14,
          color: AppColors.textMuted),
    );
  }
}
