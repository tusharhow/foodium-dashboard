import 'package:flutter/material.dart';

import '../constants.dart';

class RightSideBar extends StatelessWidget {
  const RightSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding + 10,
      ),
      child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Spacer(
                  flex: 2,
                ),
                Image(
                  image: AssetImage('images/bell.png'),
                  height: 40,
                ),
                SizedBox(
                  width: 15,
                ),
                Image(
                  image: AssetImage('images/profile.png'),
                  height: 40,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tushar',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'User',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
          SizedBox(
            height: defaultPadding * 3,
          ),
          Image(image: AssetImage('images/card.png'), height: 200),
          SizedBox(
            height: defaultPadding * 3,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: defaultPadding + 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order Menu',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      color: orangeColor.withOpacity(0.88),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('View all',
                          style: TextStyle(fontSize: 13, color: Colors.white)),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: defaultPadding * 2,
          ),
          OrderMenuItems(
            imgSrc: 'images/pizza_img3.png',
            label: 'Mushroom ',
            count: 'x1',
            price: '\$7.49',
          ),
          SizedBox(
            height: defaultPadding,
          ),
          OrderMenuItems(
            imgSrc: 'images/pizza_img2.png',
            label: 'Italian Pizza',
            count: 'x2',
            price: '\$8.69',
          ),
          SizedBox(
            height: defaultPadding,
          ),
          OrderMenuItems(
            imgSrc: 'images/pizza_img1.png',
            label: 'Sausage Pizza',
            count: 'x3',
            price: '\$9.79',
          ),
        ]),
      ),
    ));
  }
}

class OrderMenuItems extends StatelessWidget {
  const OrderMenuItems({
    Key? key,
    @required this.imgSrc,
    @required this.label,
    @required this.price,
    @required this.count,
  }) : super(key: key);
  final imgSrc;
  final label;
  final price;
  final count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage(imgSrc), height: 80),
          SizedBox(
            width: defaultPadding,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  count,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: defaultPadding * 3),
          Text(
            price,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
