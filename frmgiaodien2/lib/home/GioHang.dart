import 'package:flutter/material.dart';
import 'package:frmgiaodien2/wigets/textnho.dart';
import 'package:frmgiaodien2/wigets/textto.dart';
import 'package:frmgiaodien2/wigets/textbinhthuong.dart';

class MyHome2 extends StatefulWidget {
  const MyHome2({super.key});

  @override
  State<MyHome2> createState() => _MyHome2State();
}

class _MyHome2State extends State<MyHome2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 102, 199, 98),
          leading: Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
            ],
          ),
          title: Text("Checkout"),
        ),
      ),
    );
  }
}
