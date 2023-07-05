import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Switches extends StatelessWidget {
  const Switches({
    super.key,
    required this.name,
    required this.link,
  });

  final String name;
  final String link;

  get reloadSwitchScreen => null;

  Future<void> requon() async {
    var urlon = Uri.parse("$link/ON");
    var response = await http.get(urlon);

    if (response.statusCode == 200) {
      // Request successful
      print('Response body: ${response.body}');
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}');
    }
  }

  Future<void> requoff() async {
    var urloff = Uri.parse("$link/OFF");
    var response = await http.get(urloff);

    if (response.statusCode == 200) {
      // Request successful
      print('Response body: ${response.body}');
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}');
    }
  }

  Future<void> deleteData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int? counter = prefs.getInt('counter');
    for (var i = 1; i <= counter!; i++) {
      final String? switchName = prefs.getString('name$i');
      if (switchName == name) {
        await prefs.remove('name$i');
        await prefs.remove('link$i');
        counter = (counter) - 1;
        await prefs.setInt('counter', counter);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 143,
      margin: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 180, 89, 255),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: const Color.fromARGB(255, 48, 28, 62),
          width: 2,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: deleteData,
                icon: const Icon(
                  Icons.delete_forever,
                  size: 35,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: requon,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 40,
                  ),
                  backgroundColor: const Color.fromARGB(255, 33, 1, 95),
                  foregroundColor: Colors.white,
                ),
                child: const Text('ON'),
              ),
              ElevatedButton(
                onPressed: requoff,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 40,
                  ),
                  backgroundColor: const Color.fromARGB(255, 33, 1, 95),
                  foregroundColor: Colors.white,
                ),
                child: const Text('OFF'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
