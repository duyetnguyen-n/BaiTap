import 'package:flutter/material.dart';
import 'package:baikiemtra/widgets/textnho.dart';
import 'package:baikiemtra/widgets/textto.dart';
import 'package:baikiemtra/widgets/textbinhthuong.dart';

class MyHome2 extends StatefulWidget {
  const MyHome2({super.key});

  @override
  State<MyHome2> createState() => _MyHome2State();
}

class _MyHome2State extends State<MyHome2> {
  double rotationAngle = 0.0;
  int number = 1;
  int selectedIndex = -1;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void onTabSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 214, 226, 249),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey, width: 1),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.west,
                          color: Color.fromARGB(255, 113, 113, 112),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey, width: 1),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.star_border_purple500_outlined,
                          color: Color.fromARGB(255, 113, 113, 112),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RotatedBox(
                        quarterTurns: (rotationAngle / 360).round(),
                        child: Container(
                          height: 220,
                          width: 220,
                          decoration: BoxDecoration(
                              //color: Colors.amber,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/pink_Macaroon1.png"))),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, right: 0, top: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset:
                              const Offset(0, -3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 10, top: 25),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Pink Macaroon",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Color.fromARGB(255, 240, 132, 77),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 40.0,
                                  //color: Colors.blue,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.remove, size: 15),
                                        onPressed: () {
                                          decreaseNumber();
                                        },
                                      ),
                                      Text(
                                        number.toString(),
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.add,
                                          size: 15,
                                          color:
                                              Color.fromARGB(255, 240, 132, 77),
                                        ),
                                        onPressed: () {
                                          increaseNumber();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money_outlined,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                    Text(
                                      "10.50",
                                      style: TextStyle(
                                        fontSize: 25,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "A macaroon is a mall cake or cookie, typically \nmade from ground almonds, coconut or other \nnuts with ugar and sometimes flavorings, food \ncoloring, glace cherries, jam or a chocolate \ncoating - or a combination of these or other \ningredients",
                                  style: TextStyle(
                                    color: Colors.black87,
                                  ),
                                  softWrap: true,
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                )
              ],
            )),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.grid_view_outlined),
                    color: selectedIndex == 0
                        ? Color.fromARGB(255, 240, 132, 77)
                        : Colors.grey,
                    onPressed: () {
                      onTabSelected(0);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.local_offer_outlined),
                    color: selectedIndex == 1
                        ? Color.fromARGB(255, 240, 132, 77)
                        : Colors.grey,
                    onPressed: () {
                      onTabSelected(1);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart_outlined),
                    color: selectedIndex == 2
                        ? Color.fromARGB(255, 240, 132, 77)
                        : Colors.grey,
                    onPressed: () {
                      onTabSelected(2);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.settings),
                    color: selectedIndex == 3
                        ? Color.fromARGB(255, 240, 132, 77)
                        : Colors.grey,
                    onPressed: () {
                      onTabSelected(3);
                    },
                  ),
                ],
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: SizedBox(
            width: 64,
            height: 64,
            child: FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: Color.fromARGB(255, 240, 132, 77),
              onPressed: () {
                // Thực hiện hành động khi nút "Add" được nhấn
              },
            ),
          )),
    );
  }
}
