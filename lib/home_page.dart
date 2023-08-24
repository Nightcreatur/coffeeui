import 'package:coffeui/appbar_widget.dart';
import 'package:coffeui/coffee_tile.dart';
import 'package:coffeui/models/coffee.dart';
import 'package:coffeui/searchbar.dart';
import 'package:coffeui/tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appBarHeight = size.height / 3;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: size.height,
          ),
          AppBarWidger(height: appBarHeight),
          Positioned(
              top: appBarHeight - 25,
              child: Container(
                padding: const EdgeInsets.all(24),
                width: size.width,
                height: size.height - appBarHeight + 25,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                        Tabss(),
                        SizedBox(
                          height: 16,
                        ),
                        CustomSearchBar(),
                        SizedBox(
                          height: 16,
                        )
                      ] +
                      coffees.map((e) => CoffeeTile(coffee: e)).toList(),
                ),
              ))
        ],
      ),
    );
  }
}
