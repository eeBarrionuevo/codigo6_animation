import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  static const String nameRoute = "/hero";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: "tag-batman",
            child: Image.asset(
              "assets/images/batman.webp",
            ),
          ),
        ],
      ),
    );
  }
}
