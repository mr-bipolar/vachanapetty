import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vachanapetty/assets/app_colors.dart';
import 'package:vachanapetty/assets/assets.dart';
import 'package:vachanapetty/config/routes/slider_nav.dart';
import 'package:vachanapetty/core/animation/glow.dart';
import 'package:vachanapetty/core/enum/font_family.dart';
import 'package:vachanapetty/core/enum/slider_direction.dart';
import 'package:vachanapetty/core/extensions/space_extension.dart';
import 'package:vachanapetty/features/presentation/bloc/quotes_bloc.dart';
import 'package:vachanapetty/features/presentation/pages/content_ui/content_screen.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/widgets/spin_wheel.dart';

class SectionBody extends StatelessWidget {
  const SectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final wheelKey = GlobalKey<SpinWheelState>();
    return Column(children: [
      Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          BlocBuilder<QuotesBloc, QuotesState>(
            builder: (context, state) {
              return SpinWheel(
                key: wheelKey,
                selectedIndex: state.selectedBookId,
              );
            },
          ),
          Positioned(
              child: CircleAvatar(
            radius: 40,
            backgroundColor: AppColors.darkestBackground,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  border: const Border.fromBorderSide(
                      BorderSide(color: AppColors.lightGold, width: 4)),
                  borderRadius: BorderRadius.circular(50),
                  gradient: const RadialGradient(
                      colors: [AppColors.gold, AppColors.darkGold],
                      stops: [0.0, 1.0]),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 10,
                        color: Color.fromRGBO(201, 168, 76, 0.4))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SvgPicture.asset(
                  Assets.crossIcon,
                  width: 28,
                  height: 28,
                ),
              ),
            ),
          )),
          Positioned(
              top: -12,
              right: 0,
              left: 0,
              child: Transform.rotate(
                angle: pi,
                child: const Icon(
                  Icons.navigation_sharp,
                  color: AppColors.lightGold,
                  size: 32,
                ),
              ))
        ],
      ),
      18.h,
      Align(
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          child: InkWell(
            onTap: () async {
              final selectedIndex = await wheelKey.currentState?.spin();
              if (selectedIndex != null) {
                if (!context.mounted) return;
                context
                    .read<QuotesBloc>()
                    .add(QuotesEvent.fetchAll(bookId: selectedIndex));

                sliderNavigation(context, const ContentScreen(),
                    direction: SlideDirection.bottomToTop);
              }
            },
            overlayColor: const WidgetStatePropertyAll(Colors.white),
            borderRadius: BorderRadius.circular(16),
            child: Glow(
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(colors: [
                        AppColors.gold,
                        AppColors.gold.withValues(alpha: 0.70),
                        AppColors.gold
                      ], stops: const [
                        0.0,
                        0.5,
                        1.0
                      ]),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 10,
                            color: Color.fromRGBO(201, 168, 76, 0.4))
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 56),
                      child: Text(
                        '✦ ${Assets.buttonLabel} ✦',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.darkestBackground,
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            fontFamily: FontFamily.cinzel.family,
                            letterSpacing: 2.0),
                      ),
                    ))),
          ),
        ),
      ),
    ]);
  }
}
