import 'package:flutter/material.dart';

class AppBarWidger extends StatelessWidget {
  const AppBarWidger({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/background.png',
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                'assets/images/menu.png',
                color: Colors.white,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                    text: const TextSpan(
                        text: "It's a Greate",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                        ),
                        children: [
                      TextSpan(
                          text: " Day for\n Coffee",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]))
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
