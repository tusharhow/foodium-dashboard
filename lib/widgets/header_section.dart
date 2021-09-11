import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Today Menu 😋',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Spacer(
          flex: 2,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              filled: true,
              fillColor: Colors.white54,
              hintText: 'Search',
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black54,
              ),
              hintStyle: TextStyle(color: Colors.black54),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
