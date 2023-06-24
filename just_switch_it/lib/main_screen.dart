import 'package:flutter/material.dart';
import 'package:just_switch_it/switch_screen.dart';
import 'package:just_switch_it/add_http_switch.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool? add = true;
  Widget currentscreen = const AddHttp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Just Switch It',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.wifi_tethering_outlined,
                size: 35,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                if (add == true) {
                  setState(() {
                    currentscreen = SwitchScreen();
                  });
                  add = false;
                }
              },
              icon: const Icon(
                Icons.add,
                size: 35,
              ),
            )
          ],
        ),
        body: Container(
          child: currentscreen,
        ),
      ),
    );
  }
}
