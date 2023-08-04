import 'package:flutter/material.dart';
import 'package:ui_test/ui_elements/lottie_animation.dart';
import 'package:ui_test/ui_elements/neumorphic_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int controlnum = 0;
  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: (index) {
        setState(() {
          controlnum = index;
        });
      },
      children: [
        const Neumorphics(),
        LottieAmimations(
          index: controlnum,
        ),
        Container(
          color: const Color.fromARGB(255, 255, 24, 201),
        ),
      ],
    );
  }
}
