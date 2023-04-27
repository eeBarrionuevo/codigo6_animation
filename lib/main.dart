import 'package:codigo6_animation/animation_page.dart';
import 'package:codigo6_animation/hero_page.dart';
import 'package:codigo6_animation/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        HeroPage.nameRoute: (context) => HeroPage(),
        AnimationPage.nameRoute: (context) => AnimationPage(),
      },
      home: HomePage(),
    );
  }
}
