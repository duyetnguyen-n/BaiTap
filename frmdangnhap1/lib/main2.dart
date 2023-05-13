import 'package:flutter/material.dart';

void main(){
  runApp(frmDangNhap2());
}

class frmDangNhap2 extends StatefulWidget {
  const frmDangNhap2({super.key});

  @override
  State<frmDangNhap2> createState() => _frmDangNhap2State();
}

class _frmDangNhap2State extends State<frmDangNhap2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 300,
      child: MaterialApp(
        home: Scaffold(
          appBar:AppBar(title: Text('SIGN IN YOUR ACCOUNT'),),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 158, 158, 158))),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                  ),
                  
                )
              ],
            ),
          ), 
        
        ),

      ),
    );
  }
}