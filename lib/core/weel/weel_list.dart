import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

// weel text
Widget weelName = const Text("Bible Words");

// weel colors
const redWeel = FortuneItemStyle(color: Colors.red, borderColor: Colors.red);
const greenWeel =
    FortuneItemStyle(color: Colors.green, borderColor: Colors.green);
const amberWeel =
    FortuneItemStyle(color: Colors.amber, borderColor: Colors.amber);
const bGreyWeel =
    FortuneItemStyle(color: Colors.blueGrey, borderColor: Colors.blueGrey);
const purpleWeel =
    FortuneItemStyle(color: Colors.purple, borderColor: Colors.purple);
const pinkWeel = FortuneItemStyle(color: Colors.pink, borderColor: Colors.pink);
const tealWeel = FortuneItemStyle(color: Colors.teal, borderColor: Colors.teal);

// weel design
List<FortuneItem> items = [
  FortuneItem(child: weelName, style: redWeel),
  FortuneItem(child: weelName, style: greenWeel),
  FortuneItem(child: weelName, style: amberWeel),
  FortuneItem(child: weelName, style: pinkWeel),
  FortuneItem(child: weelName, style: bGreyWeel),
  FortuneItem(child: weelName, style: purpleWeel),
  FortuneItem(child: weelName, style: tealWeel),
  FortuneItem(child: weelName, style: redWeel),
  FortuneItem(child: weelName, style: greenWeel),
  FortuneItem(child: weelName, style: amberWeel),
  FortuneItem(child: weelName, style: pinkWeel),
  FortuneItem(child: weelName, style: bGreyWeel),
  FortuneItem(child: weelName, style: purpleWeel),
  FortuneItem(child: weelName, style: tealWeel),
];
