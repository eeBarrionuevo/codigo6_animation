import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  static const String nameRoute = "/hero";

  @override
  Widget build(BuildContext context) {
    // if (ModalRoute.of(context) != null) {
    //   List data = ModalRoute.of(context)!.settings.arguments as List;
    //   print(data);
    // }

    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: "tag-batman",
            child: Image.asset(
              "assets/images/batman.webp",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.maybePop(context);
              print(Navigator.canPop(context));
            },
            child: Text("Navigator"),
          ),
        ],
      ),
    );
  }
}
