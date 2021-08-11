import 'package:flutter/material.dart';

import '../constants.dart';


class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffFFECD0),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage('images/deli.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Hello Tushar,',
                  style: TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Get free delivery every \$20 purchases',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'Learn more',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 150,
              width: 140,
              decoration: BoxDecoration(
                  color: orangeColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage('images/food.png'),
                    height: 80,
                  ),
                  Text(
                    'Buy 1 Get 1',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    'Free!',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

