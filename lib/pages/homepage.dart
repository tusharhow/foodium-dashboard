import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodium_dashboard/components/body_middle.dart';
import 'package:foodium_dashboard/components/right_side_bar.dart';
import 'package:foodium_dashboard/components/side_menu.dart';
import 'package:get/get.dart';
import '../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: SideMenu(),
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              color: Colors.black12.withOpacity(0.02),
              child: BodyMiddle(),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: RightSideBar(),
            ),
          ),
        ],
      ),
    );
  }
}
