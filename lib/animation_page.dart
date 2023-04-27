import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController testAnimationController;
  late Animation testAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    testAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    testAnimation = ColorTween(begin: Colors.amber, end: Colors.black)
        .animate(testAnimationController);

    testAnimationController.forward();
    testAnimationController.addListener(() {
      print(testAnimation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: AnimatedBuilder(
        animation: testAnimation,
        builder: (context, child) {
          return Text("Hola");
        },
      ),
    );
  }
}
