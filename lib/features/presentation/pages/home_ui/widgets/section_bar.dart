import 'package:flutter/material.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/widgets/divider_view.dart';

class SectionBar extends StatelessWidget {
  const SectionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const DividerView(
      gradient: LinearGradient(
        colors: [
          Colors.transparent,
          Color.fromRGBO(201, 168, 76, 0.3),
          Color.fromRGBO(201, 168, 76, 0.3),
          Colors.transparent,
        ],
        stops: [0.0, 0.2, 0.8, 1.0],
      ),
    );
  }
}
