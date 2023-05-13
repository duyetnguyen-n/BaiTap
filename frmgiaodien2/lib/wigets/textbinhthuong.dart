import 'package:flutter/material.dart';

class TxtBinhThuong extends StatelessWidget {
  final String ten;
  final Color? color;

  const TxtBinhThuong(
      {super.key, this.color = Colors.black, required this.ten});

  @override
  Widget build(BuildContext context) {
    return Text(
      ten,
      style: TextStyle(
          fontSize: 14, fontFamily: 'Arial', fontWeight: FontWeight.bold),
    );
  }
}
