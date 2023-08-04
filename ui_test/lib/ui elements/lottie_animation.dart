import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAmimations extends StatelessWidget {
  const LottieAmimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
          child: Column(
        children: [
          Lottie.asset('lib/assets/lottie/animation_lkwek2ai.json'),
          Lottie.asset('lib/assets/lottie/animation_lkw1tamy.json'),
        ],
      )),
    );
  }
}
