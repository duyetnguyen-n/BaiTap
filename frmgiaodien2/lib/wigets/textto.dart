import 'package:flutter/material.dart';

class TxtTo extends StatelessWidget {
  final String ten;
  final Color? color;

  const TxtTo({super.key, this.color = Colors.black, required this.ten});

  @override
  Widget build(BuildContext context) {
    return Text(
      ten,
      style: TextStyle(
          fontSize: 20, fontFamily: 'Arial', fontWeight: FontWeight.bold),
    );
  }
}
