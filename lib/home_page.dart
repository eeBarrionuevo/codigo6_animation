import 'package:codigo6_animation/animation_page.dart';
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
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
              child: AnimatedAlign(
                alignment: Alignment.bottomRight,
                duration: Duration(seconds: 2),
                curve: Curves.bounceIn,
                child: Image.asset(
                  "assets/images/batman.webp",
                  height: 100,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              curve: Curves.easeInBack,
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(200),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const AnimatedCrossFade(
              firstChild: FlutterLogo(
                size: 200,
                style: FlutterLogoStyle.horizontal,
              ),
              secondChild: FlutterLogo(
                size: 200,
                style: FlutterLogoStyle.stacked,
              ),
              crossFadeState: CrossFadeState.showFirst,
              duration: Duration(seconds: 3),
            ),
            const SizedBox(
              height: 20,
            ),
            const AnimatedDefaultTextStyle(
              child: Text(
                "Justice League",
              ),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 50.0,
              ),
              duration: Duration(seconds: 3),
            ),
            const SizedBox(
              height: 20,
            ),
            AnimatedOpacity(
              opacity: 1,
              duration: const Duration(seconds: 3),
              curve: Curves.bounceOut,
              child: Image.asset(
                "assets/images/batman.webp",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const AnimatedPhysicalModel(
              child: FlutterLogo(
                size: 200,
              ),
              shape: BoxShape.rectangle,
              elevation: 0,
              color: Colors.blue,
              shadowColor: Colors.red,
              duration: Duration(seconds: 1),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.amber,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  AnimatedPositioned(
                    // child: Image.asset(
                    //   "assets/images/batman.webp",
                    //   height: 50,
                    //   width: 60,
                    // ),
                    top: 50,
                    left: -20,
                    child: Container(
                      color: Colors.red,
                      height: 70,
                      width: 70,
                    ),
                    duration: Duration(seconds: 3),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AnimationPage()));
              },
              child: Text("Animation Controller"),
            ),
            const SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
