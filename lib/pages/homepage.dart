import 'package:flutter/material.dart';
import 'package:foodium_dashboard/components/body_middle.dart';
import 'package:foodium_dashboard/components/right_side_bar.dart';
import 'package:foodium_dashboard/components/side_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
