import 'package:flutter/material.dart';
import 'package:vachanapetty/core/extensions/space_extension.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/widgets/section_banner.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/widgets/section_bar.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/widgets/section_body.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/widgets/section_head.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/widgets/section_tile.dart';
import 'package:vachanapetty/features/presentation/widgets/base_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SectionBanner(),
            32.h,
            const SectionTile(),
            16.h,
            const SectionHead(),
            24.h,
            const SectionBar(),
            32.h,
            const SectionBody(),
            32.h,
            const SectionBar(),
          ],
        ),
      ),
    );
  }
}
