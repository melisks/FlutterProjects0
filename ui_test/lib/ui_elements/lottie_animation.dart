import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAmimations extends StatelessWidget {
  const LottieAmimations({required this.index, super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
          child: Column(
        children: [
          Lottie.asset(
            'lib/assets/lottie/animation_lkwek2ai.json',
            animate: index == 1,
          ),
          Lottie.asset(
            'lib/assets/lottie/animation_lkw1tamy.json',
            animate: index == 1,
          ),
        ],
      )),
    );
  }
}
