import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    var color = Colors.grey.withOpacity(.8);
    return TextField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: color)),
          contentPadding: EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: color)),
          prefixIcon: Icon(Icons.search),
          hintStyle: TextStyle(color: color),
          hintText: "Search your coffee"),
    );
  }
}
