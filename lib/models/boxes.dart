import 'dart:ui';

class Box {
  String boxText;
  Color  color;

  Box({required this.boxText, required this.color,});

  Map toMap() {
    return {
      'boxText': boxText,
      'color': color,
    };
  }

  factory Box.fromMap(Map boxes) {
    return Box(
        boxText: boxes['boxText'], color: boxes['color']);
  }
}