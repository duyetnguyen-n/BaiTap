import 'package:flutter/material.dart';

class TxtBinhThuong extends StatelessWidget {
  final String ten;
  final Color? color;
  final FontWeight? dam;
  const TxtBinhThuong(
      {super.key,
      this.color = Colors.black,
      required this.ten,
      this.dam = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Text(
      ten,
      style: TextStyle(fontSize: 14, fontFamily: 'Arial', fontWeight: dam),
    );
  }
}
