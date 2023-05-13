import 'package:flutter/material.dart';
import 'package:frmgiaodien2/wigets/textnho.dart';
import 'package:frmgiaodien2/wigets/textto.dart';
import 'package:frmgiaodien2/wigets/textbinhthuong.dart';

class MyHome1 extends StatefulWidget {
  const MyHome1({super.key});

  @override
  State<MyHome1> createState() => _MyHome1State();
}

class _MyHome1State extends State<MyHome1> {
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 102, 199, 98),
          leading: Row(
            children: [IconButton(onPressed: () {}, icon: Icon(Icons.sort))],
          ),
          title: Text("Keells"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active_outlined))
          ],
        ),
        body: Container(
            color: Color.fromARGB(255, 235, 232, 232),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 15, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TxtTo(ten: "ALL Categories"),
                        Row(
                          children: [
                            TxtNho(
                              ten: "View All",
                              color: Color.fromARGB(255, 102, 199, 98),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_right_outlined))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Boxs1(
                              link: "assets/image/Household.jpg",
                              ten: "Household",
                              left: 7,
                            )),
                        InkWell(
                            onTap: () {},
                            child: Boxs1(
                              link: "assets/image/Grosery.jpg",
                              ten: "Grosery",
                              left: 25,
                            )),
                        InkWell(
                            onTap: () {},
                            child: Boxs1(
                              link: "assets/image/Liquor.png",
                              ten: "Liquor",
                              left: 25,
                            )),
                        InkWell(
                            onTap: () {},
                            child: Boxs1(
                              link: "assets/image/Cheese.jpg",
                              ten: "Chilled",
                              left: 25,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 15, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TxtTo(ten: "Nexus Member Deals"),
                        Row(
                          children: [
                            TxtNho(
                              ten: "View All",
                              color: Color.fromARGB(255, 102, 199, 98),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_right_outlined))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    // color: Colors.amber,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Boxs2(
                                name: "Ginger",
                                cost: "Rs.690.00",
                                link: "assets/image/Ginger.jpg",
                                weight: "1KG")),
                        InkWell(
                            onTap: () {},
                            child: Boxs2(
                                name: "Garlic Premium",
                                cost: "Rs.380.00",
                                link: "assets/image/cutoi.jpg",
                                weight: "1KG")),
                        InkWell(
                            onTap: () {},
                            child: Boxs2(
                                name: "Red Onions",
                                cost: "Rs.260.00",
                                link: "assets/image/red_onions.jpg",
                                weight: "1KG")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 15, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TxtTo(ten: "Keells Deals"),
                        Row(
                          children: [
                            TxtNho(
                              ten: "View All",
                              color: Color.fromARGB(255, 102, 199, 98),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_right_outlined))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    // color: Colors.amber,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Boxs2(
                                name: "Carrot",
                                cost: "Rs.490.00",
                                link: "assets/image/Carrot.jpg",
                                weight: "1KG")),
                        InkWell(
                            onTap: () {},
                            child: Boxs2(
                                name: "Mango-Bud",
                                cost: "Rs.210.00",
                                link: "assets/image/Xoai.jpg",
                                weight: "1KG")),
                        InkWell(
                            onTap: () {},
                            child: Boxs2(
                                name: "Grapes-Green",
                                cost: "Rs.1,120.00",
                                link: "assets/image/nho-xanh.jpg",
                                weight: "1KG")),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 102, 199, 98),
          currentIndex: current_index,
          onTap: (int index) {
            setState(() {
              current_index = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.store_outlined),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'My Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_outlined),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}

class Boxs1 extends StatelessWidget {
  final String link;
  final String ten;
  final double left;
  const Boxs1(
      {super.key, required this.link, required this.ten, this.left = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                              //fit: BoxFit.cover,
                              image: AssetImage(link))),
                    ),
                  )),
              Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: left),
                    child: TxtBinhThuong(
                      ten: ten,
                    ),
                  ),
                  SizedBox(width: 0),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_right_outlined))
                ],
              ),
            ],
          ),
        ));
  }
}

class Boxs2 extends StatefulWidget {
  final String link;
  final String name;
  final String cost;
  final String weight;
  const Boxs2(
      {super.key,
      required this.name,
      required this.cost,
      required this.link,
      required this.weight});

  @override
  State<Boxs2> createState() => _Boxs2State();
}

class _Boxs2State extends State<Boxs2> {
  bool favourite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      //color: Colors.red,
      padding: EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  //fit: BoxFit.cover,
                  image: AssetImage(widget.link),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 5, right: 20),
                    child: Container(
                      height: 15,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(2)),
                      child: Center(
                          child: TxtNho(
                        ten: widget.weight,
                        color: Colors.white,
                      )),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 80, top: 90, right: 10),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            favourite = !favourite;
                          });
                        },
                        icon: favourite
                            ? Icon(
                                Icons.favorite,
                                color: Color.fromARGB(255, 102, 199, 98),
                              )
                            : Icon(
                                Icons.favorite_outline,
                                color: Colors.black,
                              ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TxtNho(
                  ten: widget.name,
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TxtNho(
                  ten: widget.cost,
                  dam: FontWeight.bold,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
