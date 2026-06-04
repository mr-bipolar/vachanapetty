import 'package:flutter/material.dart';
import 'package:vachanapetty/core/enum/slider_direction.dart';

Future<T?> sliderNavigation<T>(
  BuildContext context,
  Widget page, {
  SlideDirection direction = SlideDirection.rightToLeft,
  Duration duration = const Duration(milliseconds: 300),
}) {
  Offset begin;

  switch (direction) {
    case SlideDirection.leftToRight:
      begin = const Offset(-1.0, 0.0);
      break;

    case SlideDirection.bottomToTop:
      begin = const Offset(0.0, 1.0);
      break;

    case SlideDirection.topToBottom:
      begin = const Offset(0.0, -1.0);
      break;

    default:
      begin = const Offset(1.0, 0.0);
  }

  return Navigator.push<T>(
    context,
    PageRouteBuilder(
      transitionDuration: duration,
      pageBuilder: (con, animation, _) => page,
      transitionsBuilder: (con, animation, _, child) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        );

        return SlideTransition(
          position: Tween(begin: begin, end: Offset.zero).animate(curved),
          child: FadeTransition(opacity: curved, child: child),
        );
      },
    ),
  );
}
