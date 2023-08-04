import 'package:flutter/material.dart';

class Neumorphics extends StatelessWidget {
  const Neumorphics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                        offset: const Offset(2, 2),
                        color: Colors.grey.shade400,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.sports_basketball,
                    color: Colors.black,
                    size: 80,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
