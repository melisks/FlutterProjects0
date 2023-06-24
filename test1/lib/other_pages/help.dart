import 'package:flutter/material.dart';

// ignore: camel_case_types
class help extends StatefulWidget {
  const help({Key? key}) : super(key: key);

  @override
  State<help> createState() => _helpState();
}

// ignore: camel_case_types
class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
    );
  }
}
