import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
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
