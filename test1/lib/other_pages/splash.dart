import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => const Login()))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black54,
        child: FlutterLogo(
          size: MediaQuery.of(context).size.height,
        ));
  }
}
