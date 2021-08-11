import 'package:flutter/material.dart';

class CategorieItems extends StatelessWidget {
  const CategorieItems({
    Key? key,
    @required this.imgSrc,
    @required this.label,
    @required this.cardColor,
    @required this.iconColor,
    @required this.labelColor,
  }) : super(key: key);
  final imgSrc;
  final label;
  final cardColor;
  final iconColor;
  final labelColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 130,
      decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 1,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(imgSrc),
            height: 50,
          ),
          Text(label, style: TextStyle(fontSize: 20, color: labelColor)),
          Image(
            image: AssetImage('images/next.png'),
            height: 25,
            color: iconColor,
          ),
        ],
      ),
    );
  }
}
