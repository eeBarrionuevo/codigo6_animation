import 'package:codigo6_animation/hero_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: "tag-batman",
              child: Image.asset(
                "assets/images/batman.webp",
                height: 100,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HeroPage()));
              },
              child: Text("HeroAnimation"),
            ),
          ],
        ),
      ),
    );
  }
}
