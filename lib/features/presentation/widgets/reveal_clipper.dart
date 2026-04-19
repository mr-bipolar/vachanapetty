import 'dart:math';
import 'package:flutter/material.dart';

class RevealClipper extends CustomClipper<Path> {
  final double revealPercent;
  final Alignment alignment;

  RevealClipper(this.revealPercent, this.alignment);

  @override
  Path getClip(Size size) {
    final center = alignment.alongSize(size);

    final radius =
        sqrt(pow(size.width, 2) + pow(size.height, 2)) * revealPercent;

    return Path()..addOval(Rect.fromCircle(center: center, radius: radius));
  }

  @override
  bool shouldReclip(RevealClipper oldClipper) {
    return oldClipper.revealPercent != revealPercent;
  }
}
