import 'package:flutter/material.dart';

import 'home/giaodien1.dart';
import 'home/giaodien2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome2(),
    );
  }
}
