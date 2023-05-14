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
  String dropdownValue = '+94';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 102, 199, 98),
            leading: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back))
              ],
            ),
            title: Text("Checkout"),
          ),
          body: Container(
            color: Color.fromARGB(255, 230, 230, 230),
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.only(left: 15, top: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 230, 230, 230),
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                            height: 109.05,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 15),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      TxtTo(ten: "Cart Summary"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TxtBinhThuong(
                                        ten: "Subtotal (4 items)",
                                        dam: FontWeight.normal,
                                      ),
                                      TxtBinhThuong(
                                        ten: "Rs 7,090.00",
                                        dam: FontWeight.normal,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TxtBinhThuong(
                                        ten: "Promotion Discounts",
                                        dam: FontWeight.normal,
                                      ),
                                      TxtBinhThuong(
                                        ten: "Rs 300.00",
                                        dam: FontWeight.normal,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 0.1,
                        ),
                        Container(
                            height: 109.05,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 15),
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TxtBinhThuong(
                                      ten: "Add Coupon",
                                      dam: FontWeight.normal,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 100,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(3)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 102, 199, 98))),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TxtBinhThuong(
                                      ten: "Delivery Charges",
                                      dam: FontWeight.normal,
                                    ),
                                    TxtBinhThuong(
                                      ten: "Rs 0.00",
                                      dam: FontWeight.normal,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TxtTo(
                                      ten: "Est. Total",
                                    ),
                                    TxtTo(
                                      ten: "Rs 6,790.00",
                                    )
                                  ],
                                ),
                              ]),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      color: Colors.white,
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, top: 15, right: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TxtTo(ten: "Recipient Details"),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                    child:
                                        TxtBinhThuong(ten: "Ishan Madushka"))),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 60,
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 102, 199, 98))),
                                      contentPadding: EdgeInsets.zero,
                                      border: OutlineInputBorder(),
                                    ),
                                    value: dropdownValue,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>['+84', '+86', '+94']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "71 87 86 729",
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 102, 199, 98)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TxtTo(ten: "Delivery Information"),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 0, right: 0, top: 15),
                                  child: Container(
                                    height: 40,
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        side: MaterialStateProperty.all<
                                            BorderSide>(
                                          BorderSide(
                                            color: Color.fromARGB(
                                                255, 102, 199, 98),
                                            width: 1,
                                          ),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color.fromARGB(
                                                    255, 203, 236, 181)),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        )),
                                      ),
                                      child: Text(
                                        'Home Delivery',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 102, 199, 98)),
                                      ),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 0, top: 15),
                                  child: Container(
                                    height: 40,
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        side: MaterialStateProperty.all<
                                            BorderSide>(
                                          BorderSide(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                        ),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        )),
                                      ),
                                      child: Text(
                                        'Pick Up',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 0, right: 0, top: 15),
                                child: Container(
                                    height: 40,
                                    width:
                                        MediaQuery.of(context).size.width - 100,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(3),
                                            bottomLeft: Radius.circular(3))),
                                    child: Center(
                                        child: TxtBinhThuong(
                                            ten:
                                                "424/1D Palanwatta, Pannipitiya"))),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 0, right: 0, top: 15),
                                child: Container(
                                    height: 40,
                                    width:
                                        MediaQuery.of(context).size.width - 275,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(3),
                                            bottomRight: Radius.circular(3))),
                                    child: Center(
                                        child:
                                            Icon(Icons.location_on_outlined))),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TxtTo(ten: "Delivery Date"),
                              ],
                            ),
                          ],
                        )),
                  )
                ],
              ),
            )),
          )),
    );
  }
}
