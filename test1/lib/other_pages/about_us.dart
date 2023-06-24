// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// ignore: camel_case_types
class about_us extends StatefulWidget {
  const about_us({Key? key}) : super(key: key);

  @override
  State<about_us> createState() => _about_usState();
}

// ignore: camel_case_types
class _about_usState extends State<about_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: const Text('',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 33,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 60, 15, 15),
              child: const Text("",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
