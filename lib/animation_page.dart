import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  // late AnimationController testAnimationController;
  // late Animation testAnimation;

  late AnimationController myController;
  late Animation<double> myAnimation;

  @override
  void initState() {
    super.initState();

    myController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    myAnimation = Tween<double>(begin: 0, end: 300).animate(myController);

    myController.forward();
    // testAnimationController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(seconds: 10),
    // );

    // testAnimation = ColorTween(begin: Colors.amber, end: Colors.black)
    //     .animate(testAnimationController);

    // testAnimationController.forward();
    // testAnimationController.addListener(() {
    //   // print(testAnimation.value);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      // body: AnimatedBuilder(
      //   animation: testAnimation,
      //   builder: (context, child) {
      //     print(testAnimation.value);
      //     return Container(
      //       height: 200,
      //       width: 200,
      //       color: testAnimation.value,
      //     );
      //   },
      // ),
      body: AnimatedBuilder(
        animation: myAnimation,
        builder: (context, child) {
          print(myAnimation.value);
          return Container(
            height: myAnimation.value,
            width: myAnimation.value,
            color: Colors.amber,
          );
        },
      ),
    );
  }
}
