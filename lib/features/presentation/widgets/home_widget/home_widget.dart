import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:vachanapetty/core/weel/weel_list.dart';

class HomeWidget {
  // background
  static backGroundImage({required image}) => Image.asset(
        image,
        height: double.infinity,
        fit: BoxFit.cover,
      );
  // bottom stack
  static bottomStack(
          {required StreamController<int> controller,
          required void Function() callBack}) =>
      Align(
        child: Container(
          width: 350.0,
          height: 350.0,
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[100],
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]),
          child: FortuneWheel(
            selected: controller.stream,
            animateFirst: false,
            items: items,
            onAnimationEnd: callBack,
            indicators: const <FortuneIndicator>[
              FortuneIndicator(
                alignment: Alignment.topCenter,
                child: TriangleIndicator(
                  color: Colors.white,
                  elevation: 4,
                ),
              ),
            ],
          ),
        ),
      );
  // Top stack
  static topStack({required void Function()? callBack}) => Align(
        child: Container(
          width: 60.0,
          height: 60.0,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 235, 58, 117),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ]),
          child: IconButton(
            onPressed: callBack,
            icon: const Icon(
              Icons.refresh_sharp,
              color: Colors.white,
              size: 32.0,
            ),
          ),
        ),
      );
}
