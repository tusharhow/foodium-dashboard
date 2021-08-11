import 'package:flutter/material.dart';

import '../constants.dart';


class MenuCategorieTitile extends StatelessWidget {
  const MenuCategorieTitile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Menu Categorie',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        Container(
          height: 40,
          width: 110,
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
    );
  }
}

