import 'package:flutter/material.dart';

class TxtTo extends StatelessWidget {
  final String ten;
  final Color? color;

  const TxtTo(
      {super.key,
      this.color = const Color.fromARGB(255, 63, 63, 166),
      required this.ten});

  @override
  Widget build(BuildContext context) {
    return Text(
      ten,
      style: TextStyle(
          fontSize: 18,
          fontFamily: 'Arial',
          fontWeight: FontWeight.bold,
          color: color),
    );
  }
}
