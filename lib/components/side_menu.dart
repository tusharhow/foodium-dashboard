import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodium_dashboard/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding, horizontal: 15),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: orangeColor,
              ),
              child: Image.asset(
                'images/home.png',
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: defaultPadding * 2,
            ),
            SvgPicture.asset(
              'images/messenger.svg',
              height: 25,
              color: Colors.black54,
            ),
            SizedBox(
              height: defaultPadding * 2,
            ),
            SvgPicture.asset(
              'images/wallet.svg',
              height: 25,
              color: Colors.black54,
            ),
            SizedBox(
              height: defaultPadding * 2,
            ),
            SvgPicture.asset(
              'images/heart.svg',
              height: 25,
              color: Colors.black54,
            ),
            SizedBox(
              height: defaultPadding * 2,
            ),
            SvgPicture.asset(
              'images/menu.svg',
              height: 25,
              color: Colors.black54,
            ),
            SizedBox(
              height: defaultPadding * 2,
            ),
            SvgPicture.asset(
              'images/settings.svg',
              height: 25,
              color: Colors.black54,
            ),
            Spacer(
              flex: 5,
            ),
            SvgPicture.asset(
              'images/exit.svg',
              height: 25,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
