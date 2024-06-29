import 'package:flutter/material.dart';

class Col {
  static Color backgroundCol = const Color(0xff090619);
  static Color blueCol = Colors.blue;
  static Color pinkCol = Colors.pink;
}

SizedBox space(double v, {String dir = 'v'}) {
  if (dir == 'v') {
    return SizedBox(
      height: v,
    );
  } else if (dir == 'h') {
    return SizedBox(
      width: v,
    );
  } else {
    return const SizedBox(
      width: 0,
    );
  }
}

class Style {
  static TextStyle bold25white = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white);
  static TextStyle bold25black = const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Color.fromARGB(208, 0, 0, 0));

  static TextStyle bold16white = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white);

  static TextStyle white16 = const TextStyle(fontSize: 16, color: Colors.white);

  static TextStyle black16 =
      const TextStyle(fontSize: 16, color: Color.fromARGB(208, 0, 0, 0));

  static TextStyle bold16black = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color.fromARGB(208, 0, 0, 0));

  static TextStyle bold20black = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Color.fromARGB(208, 0, 0, 0));

  static TextStyle greyText = const TextStyle(fontSize: 16, color: Colors.grey);
}
