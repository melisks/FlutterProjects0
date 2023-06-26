import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Switches extends StatelessWidget {
  const Switches({
    super.key,
    required this.name,
    required this.link,
  });

  final String name;
  final String link;
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 243, 142, 33),
            width: 2,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
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
      ),
    );
  }
}
