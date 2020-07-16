import 'dart:math';

import 'package:flutter/material.dart';

String lorem =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

String dummy =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ";

//Color baseColor = Color(0xFFCADCED);
//Color secondaryColor = Colors.brown[100];

Random _rand = Random(new DateTime.now().millisecondsSinceEpoch);
Color get baseColor => _getBaseColor();
Color get secondaryColor => _getSecondaryColor();

/*
  GOOD COLOR COMBINATIONS
  Colors.pink[50]  Colors.brown[100];
  Colors.teal[50] Colors.brown[100];
  Colors.amber[50] Colors.brown[100];
  Colors.indigo[50]
 */
Color _getBaseColor() {
  List<Color> colors = List();
  colors.add(Colors.blue.shade50);
  colors.add(Colors.grey.shade50);
  colors.add(Colors.pink.shade50);
  colors.add(Colors.teal.shade50);
  colors.add(Colors.red.shade50);
  colors.add(Colors.green.shade50);
  colors.add(Colors.amber.shade50);
  colors.add(Colors.indigo.shade50);
  colors.add(Colors.lightBlue.shade50);
  colors.add(Colors.deepPurple.shade50);
  colors.add(Colors.deepOrange.shade50);
  colors.add(Colors.brown.shade50);
  colors.add(Colors.cyan.shade50);

  int index = _rand.nextInt(colors.length - 1);
//  return Color(0xFFCADCED);
  return Colors.blueGrey[100];
}

Color _getSecondaryColor() {
  List<Color> colors = List();
  colors.add(Colors.brown.shade100);
  colors.add(Colors.grey.shade100);
  colors.add(Colors.pink.shade50);
  colors.add(Colors.teal.shade100);
  colors.add(Colors.red.shade100);
  colors.add(Colors.green.shade100);
  colors.add(Colors.amber.shade100);
  colors.add(Colors.indigo.shade100);
  colors.add(Colors.lime.shade100);
  colors.add(Colors.deepPurple.shade100);
  colors.add(Colors.deepOrange.shade100);
  colors.add(Colors.brown.shade100);

  int index = _rand.nextInt(colors.length - 1);
  return Colors.brown[50];
}

List<BoxShadow> customShadow = [
  BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -3,
      offset: Offset(-3, -3),
      blurRadius: 20),
  BoxShadow(
      color: Colors.blue[900].withOpacity(0.2),
      spreadRadius: 2,
      offset: Offset(5, 5),
      blurRadius: 12),
];

void p(dynamic message) {
  print(message);
}
