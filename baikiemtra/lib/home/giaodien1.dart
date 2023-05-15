import 'package:flutter/material.dart';
import 'package:baikiemtra/widgets/textnho.dart';
import 'package:baikiemtra/widgets/textto.dart';
import 'package:baikiemtra/widgets/textbinhthuong.dart';

class MyHome1 extends StatefulWidget {
  const MyHome1({Key? key}) : super(key: key);

  @override
  _MyHome1State createState() => _MyHome1State();
}

class _MyHome1State extends State<MyHome1> {
  int selectedIndex = 0;
  List<String> myList = ['All', 'Fruits', 'Vegetables', 'Greens', 'Bakery'];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(255, 214, 226, 249),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Column(
              children: [
                Row(
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
                        Icons.sort_rounded,
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
                        Icons.search,
                        color: Color.fromARGB(255, 113, 113, 112),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myList.asMap().entries.map((entry) {
                        final index = entry.key;
                        final item = entry.value;
                        bool isSelected = index == selectedIndex;
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: isSelected
                                      ? Colors.red
                                      : Color.fromARGB(255, 214, 226, 249),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Text(
                              item,
                              style: TextStyle(
                                color: isSelected
                                    ? Colors.red
                                    : Color.fromARGB(255, 35, 53, 213),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 140,
                        width: MediaQuery.of(context).size.width,
                        //color: Colors.amber,
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 1000,
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            20,
                                    //color: Colors.green,
                                    child: Column(
                                      children: [
                                        Boxs2(
                                            name1: "FRUITS",
                                            name2: "Raspberries",
                                            information:
                                                "Fruit of a multitude of plant",
                                            information2: "species",
                                            cost: "10.50",
                                            link:
                                                "assets/images/Raspberies.jpg"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Boxs2(
                                            name1: "BAKERY",
                                            name2: "Pink Macaroon",
                                            information:
                                                "Fruit of a multitude of plant",
                                            information2: "species",
                                            cost: "5.25",
                                            link:
                                                "assets/images/pink_Macaroon.jpg"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Boxs2(
                                            name1: "VEGETABLES",
                                            name2: "Raspberries",
                                            information:
                                                "Fruit of a multitude of plant",
                                            information2: "species",
                                            cost: "10.50",
                                            link: "assets/images/Raubapcai.jpg")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 1000,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 20,
                                //color: Colors.red,
                                child: Column(
                                  children: [
                                    Boxs1(),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Boxs2(
                                        name1: "FRUITS",
                                        name2: "Green Grape",
                                        information:
                                            "Fruit of a multitude of plant",
                                        information2: "species",
                                        cost: "15.50",
                                        link: "assets/images/nho-xanh.jpg"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Boxs2(
                                        name1: "FRUITS",
                                        name2: "Raspberries",
                                        information:
                                            "Fruit of a multitude of plant",
                                        information2: "species",
                                        cost: "10.50",
                                        link: "assets/images/purple-grapes.jpg")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Boxs1 extends StatefulWidget {
  const Boxs1({super.key});

  @override
  State<Boxs1> createState() => _Boxs1State();
}

class _Boxs1State extends State<Boxs1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/Capture.JPG"),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SALE",
                    style: TextStyle(color: Color.fromARGB(255, 213, 212, 212)),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "50% off",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      //fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Use promotional code",
                    style: TextStyle(
                      color: Color.fromARGB(255, 213, 212, 212),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "S P R I N G",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class Boxs2 extends StatefulWidget {
  final String link;
  final String name2;
  final String information;
  final String name1;
  final String information2;
  final String cost;
  const Boxs2({
    super.key,
    required this.name1,
    required this.name2,
    required this.information,
    required this.information2,
    required this.cost,
    required this.link,
  });

  @override
  State<Boxs2> createState() => _Boxs2State();
}

class _Boxs2State extends State<Boxs2> {
  bool favourite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey, width: 1),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        //fit: BoxFit.cover,
                        image: AssetImage(widget.link),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: 5, top: 5, right: 20),
                            child: Text(
                              widget.name1,
                              style: TextStyle(
                                  fontSize: 8,
                                  color:
                                      const Color.fromARGB(255, 63, 63, 166)),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  top: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TxtTo(
                          ten: widget.name2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TxtNho(
                          ten: widget.information,
                          //dam: FontWeight,
                          //color: Colors.black,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TxtNho(
                          ten: widget.information2,
                          //dam: FontWeight,
                          //color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money_outlined,
                              color: const Color.fromARGB(255, 63, 63, 166),
                              size: 20,
                            ),
                            TxtTo(
                              ten: widget.cost,
                              //dam: FontWeight,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 15,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 239, 112, 54),
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
