import 'package:flutter/material.dart';

class Tabss extends StatefulWidget {
  const Tabss({super.key});

  @override
  State<Tabss> createState() => _TabssState();
}

class _TabssState extends State<Tabss> {
  final tabs = ['Hot Coffee', 'Cold Coffee', 'Others'];
  var selectedTab = "Hot Coffee";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: tabs
          .map(
            (e) => GestureDetector(
              onTap: () => setState(() {
                selectedTab = e;
              }),
              child: Text(e,
                  style: e == selectedTab ? boldStyle() : normalStyle()),
            ),
          )
          .toList(),
    );
  }

  TextStyle boldStyle() {
    return TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
  }

  TextStyle normalStyle() {
    return TextStyle();
  }
}
