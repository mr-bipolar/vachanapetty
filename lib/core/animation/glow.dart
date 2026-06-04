import 'package:flutter/material.dart';
import 'package:vachanapetty/assets/app_colors.dart';

class Glow extends StatefulWidget {
  final Widget child;

  const Glow({super.key, required this.child});

  @override
  State<Glow> createState() => _GlowState();
}

class _GlowState extends State<Glow> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          children: [
            widget.child,
            Positioned.fill(
              child: IgnorePointer(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: ShaderMask(
                    blendMode: BlendMode.srcATop,
                    shaderCallback: (rect) {
                      final dx = -1.0 + (_controller.value * 2);
                      return LinearGradient(
                        begin: Alignment(dx - 0.2, -1),
                        end: Alignment(dx + 0.2, 1),
                        colors: const [
                          AppColors.darkGold,
                          AppColors.lightGold,
                          AppColors.darkGold,
                        ],
                        stops: const [0.0, 0.5, 1],
                      ).createShader(rect);
                    },
                    child: Material(
                        color: Colors.white.withValues(alpha: 0.14),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
