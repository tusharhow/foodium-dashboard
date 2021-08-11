import 'package:flutter/material.dart';
import 'package:foodium_dashboard/constants.dart';
import 'package:foodium_dashboard/widgets/categorie_items.dart';
import 'package:foodium_dashboard/widgets/header_section.dart';
import 'package:foodium_dashboard/widgets/home_banner.dart';
import 'package:foodium_dashboard/widgets/menu_categorie_title.dart';

class BodyMiddle extends StatelessWidget {
  const BodyMiddle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding + 10,
        vertical: defaultPadding + 10,
      ),
      child: SingleChildScrollView(
          child: Column(
        children: [
          HeaderSection(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          HomeBanner(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          MenuCategorieTitile(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategorieItems(
                imgSrc: 'images/pizza.png',
                label: 'Pizza',
                cardColor: orangeColor,
                iconColor: Colors.white,
                labelColor: Colors.white,
              ),
              CategorieItems(
                imgSrc: 'images/burger.png',
                label: 'Burger',
                cardColor: Colors.white,
                iconColor: orangeColor,
                labelColor: Colors.black,
              ),
              CategorieItems(
                imgSrc: 'images/hotdog.png',
                label: 'Hotdog',
                cardColor: Colors.white,
                iconColor: orangeColor,
                labelColor: Colors.black,
              ),
              CategorieItems(
                imgSrc: 'images/choco.png',
                label: 'Taco',
                cardColor: Colors.white,
                iconColor: orangeColor,
                labelColor: Colors.black,
              ),
              CategorieItems(
                imgSrc: 'images/popcorn.png',
                labelColor: Colors.black,
                label: 'Snack',
                cardColor: Colors.white,
                iconColor: orangeColor,
              ),
              CategorieItems(
                imgSrc: 'images/soda.png',
                label: 'Drink',
                cardColor: Colors.white,
                iconColor: orangeColor,
                labelColor: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: defaultPadding * 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MoreItems(
                label: 'Mushroom Pizza',
                price: '\$7.49',
                imgSrc: 'images/pizza_img1.png',
              ),
              MoreItems(
                label: 'Italian Pizza',
                price: '\$8.5',
                imgSrc: 'images/pizza_img2.png',
              ),
              MoreItems(
                label: 'Sausage Pizza',
                price: '\$7.5',
                imgSrc: 'images/pizza_img3.png',
              ),
            ],
          )
        ],
      )),
    );
  }
}

class MoreItems extends StatelessWidget {
  const MoreItems({
    Key? key,
    @required this.imgSrc,
    @required this.price,
    @required this.label,
  }) : super(key: key);
  final imgSrc;
  final label;
  final price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          height: 200,
          width: 270,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: defaultPadding * 5,
                ),
                Text(
                  label,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: orangeColor,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: orangeColor,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: orangeColor,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: orangeColor,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: orangeColor,
                      size: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: defaultPadding - 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image(
                      image: AssetImage('images/plus.png'),
                      height: 30,
                      color: orangeColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 130,
          right: 70,
          child: Image(
            image: AssetImage(imgSrc),
            height: 130,
          ),
        ),
      ],
    );
  }
}
