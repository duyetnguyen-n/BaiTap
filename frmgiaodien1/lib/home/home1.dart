import 'package:flutter/material.dart';
import 'package:frmgiaodien1/widgets/Text.dart';

class MyHome1 extends StatefulWidget {
  const MyHome1({super.key});

  @override
  State<MyHome1> createState() => _MyHome1State();
}

class _MyHome1State extends State<MyHome1> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: TextPage(
            text: "Categories",
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
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
        body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 1.5,
          shrinkWrap: true,
          children: <Widget>[
            Boxs(
                str:
                    'https://thuthuatnhanh.com/wp-content/uploads/2020/09/hinh-anh-anime-girl-deo-kinh-diu-dang.jpg',
                ten: 'Fashion',
                color: Color.fromARGB(255, 38, 219, 153)),
            Boxs(
              str:
                  'http://www.blogsnow.com/wp-content/uploads/2016/10/Electronics.jpg',
              ten: 'Beauty',
              color: Color.fromARGB(232, 221, 91, 73),
            ),
            Boxs(
                str:
                    'http://www.blogsnow.com/wp-content/uploads/2016/10/Electronics.jpg',
                ten: 'Electronics',
                color: Color.fromARGB(232, 49, 76, 196)),
            Boxs(
                str:
                    'https://thuthuatnhanh.com/wp-content/uploads/2020/09/hinh-anh-anime-girl-deo-kinh-diu-dang.jpg',
                ten: 'Jewellery',
                color: Color.fromARGB(232, 176, 64, 133)),
            Boxs(
                str:
                    'https://thuthuatnhanh.com/wp-content/uploads/2020/09/hinh-anh-anime-girl-deo-kinh-diu-dang.jpg',
                ten: 'Footwear',
                color: Color.fromARGB(232, 147, 66, 194)),
            Boxs(
                str:
                    'https://thuthuatnhanh.com/wp-content/uploads/2020/09/hinh-anh-anime-girl-deo-kinh-diu-dang.jpg',
                ten: 'Toys',
                color: Color.fromARGB(232, 44, 149, 181)),
            Boxs(
                str:
                    'https://thuthuatnhanh.com/wp-content/uploads/2020/09/hinh-anh-anime-girl-deo-kinh-diu-dang.jpg',
                ten: 'Furniture',
                color: Color.fromARGB(232, 82, 195, 96)),
            Boxs(
                str:
                    'https://thuthuatnhanh.com/wp-content/uploads/2020/09/hinh-anh-anime-girl-deo-kinh-diu-dang.jpg',
                ten: 'Mobiles',
                color: Color.fromARGB(232, 183, 198, 70)),
          ],
        ),
      ),
    );
  }
}

class Boxs extends StatelessWidget {
  final Color? color;
  final String str;
  final String ten;
  const Boxs({super.key, this.color, required this.str, required this.ten});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
                alignment: Alignment(-0.8, -0.6),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(str),
                  radius: 30,
                )),
            SizedBox(
              height: 20,
            ),
            TextPage(text: ten),
          ],
        ),
      ),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
    );
  }
}
