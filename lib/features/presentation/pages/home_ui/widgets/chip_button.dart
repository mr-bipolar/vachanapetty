import 'package:flutter/material.dart';
import 'package:vachanapetty/assets/app_colors.dart';
import 'package:vachanapetty/core/enum/font_family.dart';

class ChipButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const ChipButton(
      {super.key,
      required this.label,
      this.isActive = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        overlayColor: WidgetStatePropertyAll(AppColors.lightGold.withAlpha(50)),
        child: Ink(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: const Color.fromRGBO(201, 168, 76, 0.2), width: 1),
              gradient:
                  isActive ? AppColors.goldGradient : AppColors.purpleGradient),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: isActive
                      ? AppColors.darkestBackground
                      : AppColors.textMuted,
                  fontFamily: FontFamily.notoSerif.family,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.w600,
                  fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
