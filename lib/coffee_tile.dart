import 'package:coffeui/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key, required this.coffee});
  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    var tileHeight = 120.0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: tileHeight,
        child: Row(children: [
          GetImage(tileHeight: tileHeight, coffee: coffee),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 16,
            ),
            child: Column(
              children: [
                Boldtext(coffee: coffee),
                Text(
                  coffee.smallDescription,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class Boldtext extends StatelessWidget {
  const Boldtext({
    super.key,
    required this.coffee,
  });

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Text(
      coffee.name,
      style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
    );
  }
}

class GetImage extends StatelessWidget {
  const GetImage({
    super.key,
    required this.tileHeight,
    required this.coffee,
  });

  final double tileHeight;
  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tileHeight,
      width: tileHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            coffee.image,
          ),
        ),
      ),
    );
  }
}
