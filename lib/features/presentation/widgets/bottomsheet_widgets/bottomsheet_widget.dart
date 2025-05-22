import 'package:flutter/material.dart';
import 'package:vachanapetty/assets/assets.dart';

class BottomWidget {
  // verse view
  static versesView({required String verse}) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card.filled(
          elevation: 2.0,
          shadowColor: Colors.black.withValues(alpha: 0.6),
          color: Assets.cardBg,
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(166, 254, 171, 235),
                width: 2,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                Text(
                  verse,
                  style: const TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 24,
                      fontWeight: FontWeight.w200,
                      fontFamily: Assets.fontName),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      );

  // chapter view
  static chapterView({required String chapter}) => Container(
        alignment: Alignment.center,
        child: Text(
          chapter,
          style: const TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white),
        ),
      );

  // error view
  static errorView(
          {required String label, required void Function()? callBack}) =>
      Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error, color: Colors.red, size: 34),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
              child: Text(
                label,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            BottomWidget.backButton(
              bgColor: Colors.pink.withValues(alpha: 0.8),
              callBack: callBack,
            )
          ],
        ),
      );

  // back button

  static backButton(
          {String? label,
          Color? bgColor,
          required void Function()? callBack}) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: bgColor ?? Colors.black.withValues(alpha: 0.1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          onPressed: callBack,
          child: Text(
            label ?? "Back to Home Page",
            style: const TextStyle(
                fontWeight: FontWeight.w600, color: Colors.white60),
          ),
        ),
      );
}
