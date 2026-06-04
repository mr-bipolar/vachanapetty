import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vachanapetty/assets/app_colors.dart';
import 'package:vachanapetty/features/data/models/book_item.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/widgets/wheel.dart';

class SpinWheel extends StatefulWidget {
  final int selectedIndex;
  const SpinWheel({super.key, required this.selectedIndex});

  @override
  State<SpinWheel> createState() => SpinWheelState();
}

class SpinWheelState extends State<SpinWheel>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  Animation<double>? _rotationAnimation;

  double _currentRotation = 0;
  bool _isAnimating = false;

  final _books = BookItem.books;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
  }

  Future<int> spin() async {
    if (_isAnimating) return -1;

    _isAnimating = true;

    final targetRotation = _currentRotation +
        (4 + Random().nextInt(4)) * 2 * pi +
        Random().nextDouble() * 2 * pi;

    _rotationAnimation = Tween<double>(
      begin: _currentRotation,
      end: targetRotation,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutQuart,
      ),
    );

    _controller.reset();

    await _controller.forward();

    _currentRotation = targetRotation;

    _isAnimating = false;

    // Optional: selected segment
    const segmentCount = 8;
    const segmentAngle = 2 * pi / segmentCount;

    final normalized = (_currentRotation % (2 * pi) + 2 * pi) % (2 * pi);

    final selectedIndex =
        ((2 * pi - normalized) / segmentAngle).floor() % segmentCount;

    return widget.selectedIndex != 0
        ? widget.selectedIndex
        : _books[selectedIndex + 1].id;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final angle = _rotationAnimation?.value ?? _currentRotation;

        return Transform.rotate(
          angle: angle,
          child: child,
        );
      },
      child: Container(
        height: 300,
        width: 300,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              color: Color.fromRGBO(201, 168, 76, 0.4),
            ),
          ],
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.darkGold,
              width: 8,
            ),
          ),
          gradient: RadialGradient(
            colors: [
              AppColors.gold,
              AppColors.darkGold,
            ],
          ),
        ),
        child: CustomPaint(
          painter: WheelPainter(
              labels: widget.selectedIndex == 0
                  ? _books
                      .where((book) => book.id != 0)
                      .map((book) => book.name)
                      .toList()
                  : List.filled(
                      8,
                      _books
                          .firstWhere(
                            (book) => book.id == widget.selectedIndex,
                          )
                          .name,
                    )),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
