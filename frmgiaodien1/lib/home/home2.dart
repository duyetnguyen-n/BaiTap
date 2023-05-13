import 'package:flutter/material.dart';
import 'package:frmgiaodien1/widgets/Text.dart';
import 'package:frmgiaodien1/home/home1.dart';

class MyHome2 extends StatefulWidget {
  @override
  State<MyHome2> createState() => _MyHome2State();
}

class _MyHome2State extends State<MyHome2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 238, 235, 235),
            appBar: AppBar(
              title: TextPage(
                text: "Categories",
                color: Colors.black,
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      MyHome1();
                    },
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    )),
              ],
              backgroundColor: Colors.white,
            ),
            body: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 5),
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 1,
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Expanded(
                            child: Boxs1(
                                tr: 'Fashion',
                                link: 'assets/image/Fashion.jpg')),
                        Expanded(
                            child: Boxs1(
                                tr: 'Beauty', link: 'assets/image/Beauty.jpg')),
                        Expanded(
                            child: Boxs1(
                                tr: 'Electronics',
                                link: 'assets/image/Electronics.jpg')),
                        Expanded(
                            child: Boxs1(
                                tr: 'Jewellery',
                                link: 'assets/image/Jewellery.jpg')),
                        Expanded(
                            child: Boxs1(
                                tr: 'Footwear',
                                link: 'assets/image/Footwear.jpg')),
                        Expanded(
                            child: Boxs1(
                                tr: 'Toys', link: 'assets/image/Toys.jpg')),
                        Expanded(
                            child: Boxs1(
                                tr: 'Furnitures',
                                link: 'assets/image/furnitures.jpg')),
                        Expanded(
                            child: Boxs1(
                                tr: 'Mobiles',
                                link: 'assets/image/mobiles.jpg')),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 1,
                  color: Colors.grey,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      Boxs2(
                        link: 'assets/image/anhmaytinh.jpg',
                        so: '70',
                        ten: 'Laptops / PC',
                      ),
                      Boxs2(
                        link: 'assets/image/television.jpg',
                        so: '89',
                        ten: 'Televisions',
                      ),
                      Boxs2(
                        link: 'assets/image/anhmaytinh.jpg',
                        so: '71',
                        ten: 'Laptops / PC',
                      ),
                      Boxs2(
                        link: 'assets/image/television.jpg',
                        so: '34',
                        ten: 'Televisions',
                      ),
                      Boxs2(
                        link: 'assets/image/anhmaytinh.jpg',
                        so: '54',
                        ten: 'Laptops / PC',
                      ),
                      Boxs2(
                        link: 'assets/image/television.jpg',
                        so: '64',
                        ten: 'Televisions',
                      ),
                      Boxs2(
                        link: 'assets/image/anhmaytinh.jpg',
                        so: '70',
                        ten: 'Laptops / PC',
                      ),
                      Boxs2(
                        link: 'assets/image/television.jpg',
                        so: '70',
                        ten: 'Televisions',
                      ),
                      Boxs2(
                        link: 'assets/image/anhmaytinh.jpg',
                        so: '70',
                        ten: 'Laptops / PC',
                      ),
                      Boxs2(
                        link: 'assets/image/television.jpg',
                        so: '70',
                        ten: 'Televisions',
                      ),
                      Boxs2(
                        link: 'assets/image/anhmaytinh.jpg',
                        so: '70',
                        ten: 'Laptops / PC',
                      ),
                      Boxs2(
                        link: 'assets/image/television.jpg',
                        so: '70',
                        ten: 'Televisions',
                      ),
                      Boxs2(
                        link: 'assets/image/anhmaytinh.jpg',
                        so: '70',
                        ten: 'Laptops / PC',
                      ),
                      Boxs2(
                        link: 'assets/image/television.jpg',
                        so: '70',
                        ten: 'Televisions',
                      ),
                      Boxs2(
                        link: 'assets/image/anhmaytinh.jpg',
                        so: '70',
                        ten: 'Laptops / PC',
                      ),
                      Boxs2(
                        link: 'assets/image/television.jpg',
                        so: '70',
                        ten: 'Televisions',
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

class Boxs1 extends StatelessWidget {
  final Color? color;
  final String tr;
  final String link;
  const Boxs1(
      {super.key,
      this.color = Colors.white,
      required this.tr,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(link),
              radius: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextPage(
                  text: tr,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
      color: color,
    );
  }
}

class Boxs2 extends StatelessWidget {
  final Color? color;
  final String link;
  final String so;
  final String ten;
  const Boxs2(
      {super.key,
      this.color = Colors.white,
      required this.link,
      this.so = '0',
      required this.ten});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 20),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Container(
                    height: 80,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(link),
                      ),
                    )),
                Align(
                    alignment: Alignment(0.8, 0.1),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                        child: Text(so),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ten,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ]),
        ));
  }
}
