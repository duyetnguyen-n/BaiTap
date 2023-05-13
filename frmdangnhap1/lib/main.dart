import 'package:flutter/material.dart';

void main() {
  runApp(
    frmDangNhap(),
  );
}

class frmDangNhap extends StatefulWidget {
  const frmDangNhap({super.key});

  @override
  State<frmDangNhap> createState() => _frmDangNhapState();
}

class _frmDangNhapState extends State<frmDangNhap> {
  bool cbValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Sign In'),
            backgroundColor: Colors.greenAccent,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Username',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.amberAccent),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.amberAccent)),
                        filled: true,
                        fillColor: Color.fromARGB(238, 197, 201, 224)),
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.amberAccent),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.amberAccent)),
                        filled: true,
                        fillColor: Color.fromARGB(238, 197, 201, 224)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text.rich(TextSpan(
                        text: 'Forgot ',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Username/Password?',
                            style: TextStyle(
                                color: Colors.greenAccent,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      )),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.greenAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(400, 50)),
                    ),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have a account",
                          style: TextStyle(color: Colors.black)),
                      Text.rich(TextSpan(
                          text: "SIGN UP NOW",
                          style: TextStyle(color: Colors.greenAccent)))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
