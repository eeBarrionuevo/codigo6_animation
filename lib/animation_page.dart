import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController testAnimationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    testAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    testAnimationController.forward();
    testAnimationController.addListener(() {
      print(testAnimationController.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
    );
  }
}
