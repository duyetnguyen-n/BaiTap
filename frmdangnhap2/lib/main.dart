import 'package:flutter/material.dart';

void main() {
  runApp(frmDangNhap2());
}

class frmDangNhap2 extends StatefulWidget {
  const frmDangNhap2({super.key});

  @override
  State<frmDangNhap2> createState() => _frmDangNhap2State();
}

class _frmDangNhap2State extends State<frmDangNhap2> {
  bool? val = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 300,
      child: MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.all(30),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SIGN IN YOUR ACCOUNT',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                      decoration: InputDecoration(
                    hintText: 'johnnythedesigner@gmail.com',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      decoration: InputDecoration(
                    hintText: '********',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          value: val,
                          onChanged: (value) {
                            setState(() {
                              val = value;
                            });
                          }),
                      Text('Keep me sign in'),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.blueAccent),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(4000, 50))),
                      child: Text('SIGN IN')),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(TextSpan(text: 'Forgot your password?'))
                    ],
                  )
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
