import 'package:flutter/material.dart';

class TxtNho extends StatelessWidget {
  final String ten;
  final Color? color;
  final FontWeight? dam;
  const TxtNho(
      {super.key,
      this.color = const Color.fromARGB(255, 142, 142, 244),
      required this.ten,
      this.dam});

  @override
  Widget build(BuildContext context) {
    return Text(
      ten,
      style: TextStyle(
          fontSize: 9,
          fontFamily: 'Arial',
          color: color,
          //fontStyle: FontStyle.italic,
          fontWeight: dam),
    );
  }
}
