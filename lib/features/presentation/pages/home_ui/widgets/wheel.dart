import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vachanapetty/assets/app_colors.dart';
import 'package:vachanapetty/core/enum/font_family.dart';

class WheelPainter extends CustomPainter {
  final List<String> labels;
  const WheelPainter({required this.labels});

  @override
  void paint(Canvas canvas, Size size) {
    const segmentCount = 8;

    final center = Offset(
      size.width / 2,
      size.height / 2,
    );

    final radius = min(size.width, size.height) / 2;

    final rect = Rect.fromCircle(
      center: center,
      radius: radius,
    );

    const sweepAngle = 2 * pi / segmentCount;

    for (int i = 0; i < segmentCount; i++) {
      final startAngle = -pi / 2 + i * sweepAngle;

      // Base segment
      final fillPaint = Paint()
        ..style = PaintingStyle.fill
        ..color = i.isEven
            ? AppColors.wheelSegmentDark
            : AppColors.wheelSegmentAlternate;

      canvas.drawArc(
        rect,
        startAngle,
        sweepAngle,
        true,
        fillPaint,
      );

      // Overlay tint
      final overlayPaint = Paint()
        ..style = PaintingStyle.fill
        ..color = (i.isEven ? AppColors.gold : AppColors.accentPurple)
            .withValues(alpha: 0.12);

      canvas.drawArc(
        rect,
        startAngle,
        sweepAngle,
        true,
        overlayPaint,
      );

      // Segment border
      final borderPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3.0
        ..color = i.isEven ? AppColors.gold : AppColors.accentPurple;

      final path = Path()
        ..moveTo(center.dx, center.dy)
        ..arcTo(
          rect,
          startAngle,
          sweepAngle,
          false,
        )
        ..close();

      canvas.drawPath(path, borderPaint);

      final textAngle = startAngle + sweepAngle / 2;

      final textRadius = radius * 0.68;

      final textPosition = Offset(
        center.dx + textRadius * cos(textAngle),
        center.dy + textRadius * sin(textAngle),
      );

      final textPainter = TextPainter(
        text: TextSpan(
          text: labels[i],
          style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 10,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.notoSerif.family,
              shadows: const [
                Shadow(
                  color: Color.fromRGBO(0, 0, 0, 0.8),
                  offset: Offset(0, 2),
                  blurRadius: 1,
                )
              ]),
        ),
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
      )..layout(maxWidth: radius * 0.35);

      canvas.save();

      canvas.translate(
        textPosition.dx,
        textPosition.dy,
      );

      canvas.rotate(textAngle);
      //canvas.rotate(textAngle + pi / 2);
      //canvas.rotate(pi / 4);

      textPainter.paint(
        canvas,
        Offset(
          -textPainter.width / 2,
          -textPainter.height / 2,
        ),
      );

      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
