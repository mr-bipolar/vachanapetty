import 'package:flutter/material.dart';
import 'package:vachanapetty/assets/app_colors.dart';
import 'package:vachanapetty/assets/assets.dart';
import 'package:vachanapetty/core/enum/font_family.dart';
import 'package:vachanapetty/core/extensions/space_extension.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/widgets/divider_view.dart';

class SectionBanner extends StatelessWidget {
  const SectionBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Icon(
        Icons.church_outlined,
        color: AppColors.gold,
        size: 28,
        shadows: [
          Shadow(
              color: Color.fromRGBO(201, 168, 76, 0.4),
              offset: Offset(0, 4),
              blurRadius: 10)
        ],
      ),
      4.h,
      Text(
        Assets.appName,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.lightGold,
            fontSize: 24,
            letterSpacing: 2.0,
            height: 1.2,
            shadows: const [
              Shadow(color: Color.fromRGBO(201, 168, 76, 0.4)),
            ],
            fontFamily: FontFamily.cinzel.family),
      ),
      Text(
        Assets.appNameMl,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.textMuted,
          fontSize: 16,
          fontFamily: FontFamily.notoSerif.family,
          letterSpacing: 1.0,
          height: 1.2,
        ),
      ),
      14.h,
      const DividerView(
        margin: EdgeInsets.symmetric(horizontal: 30),
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            AppColors.gold,
            AppColors.darkGold,
            Colors.transparent,
          ],
          stops: [0.0, 0.4, 0.8, 1.0],
        ),
      ),
    ]);
  }
}
