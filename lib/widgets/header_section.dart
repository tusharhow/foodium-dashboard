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
          'Today' '\'s Menu 😋',
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
              fillColor: Colors.black12,
              hintText: 'Search for a dish',
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black26,
              ),
              hintStyle: TextStyle(color: Colors.black26),
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
