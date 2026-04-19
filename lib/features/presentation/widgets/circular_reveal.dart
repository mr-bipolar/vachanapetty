import 'package:flutter/material.dart';
import 'package:vachanapetty/features/presentation/widgets/reveal_clipper.dart';

class CircularReveal extends StatelessWidget {
  final Widget child;
  final double revealPercent;
  final Alignment alignment;

  const CircularReveal({
    super.key,
    required this.child,
    required this.revealPercent,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RevealClipper(revealPercent, alignment),
      child: child,
    );
  }
}
