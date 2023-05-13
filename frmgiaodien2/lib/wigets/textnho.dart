import 'package:flutter/material.dart';

class TxtNho extends StatelessWidget {
  final String ten;
  final Color? color;
  final FontWeight? dam;
  const TxtNho(
      {super.key,
      this.color = const Color.fromARGB(255, 169, 167, 167),
      required this.ten,
      this.dam});

  @override
  Widget build(BuildContext context) {
    return Text(
      ten,
      style: TextStyle(
          fontSize: 13, fontFamily: 'Arial', color: color, fontWeight: dam),
    );
  }
}
