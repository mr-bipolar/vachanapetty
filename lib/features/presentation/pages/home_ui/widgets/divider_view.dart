import 'package:flutter/material.dart';

class DividerView extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final Gradient? gradient;
  const DividerView({super.key, this.margin, this.gradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.0,
      margin: margin,
      decoration: BoxDecoration(gradient: gradient),
    );
  }
}
