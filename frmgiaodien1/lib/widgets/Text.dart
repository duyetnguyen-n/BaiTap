import 'package:flutter/cupertino.dart';

class TextPage extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  TextPage(
      {super.key,
      this.color = const Color.fromARGB(255, 234, 221, 216),
      required this.text,
      this.size = 18,
      this.height = 1.2});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Roboto', color: color, fontSize: size, height: height),
    );
  }
}
