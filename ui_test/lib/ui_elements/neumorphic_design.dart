import 'package:flutter/material.dart';

class Neumorphics extends StatelessWidget {
  const Neumorphics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                        offset: const Offset(6, 6),
                        color: Colors.grey.shade500,
                      ),
                      const BoxShadow(
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                        offset: Offset(-6, -6),
                        color: Colors.white,
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
