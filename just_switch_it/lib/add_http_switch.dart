import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddHttp extends StatefulWidget {
  const AddHttp(this.switchscreen, {super.key});
  final void Function() switchscreen;
  @override
  State<AddHttp> createState() => _AddHttpState();
}

class _AddHttpState extends State<AddHttp> {
  String? formDataName;
  String? formDataLink;
  int? counter;
  void addpin() {
    if (formDataName != null && formDataLink != null) {
      submitForm();
    }
  }

  Future<void> submitForm() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int? counter = prefs.getInt('counter');
    counter ??= 0;
    counter = (counter) + 1;
    await prefs.setInt('counter', counter);
    await prefs.setString('name$counter', formDataName!);
    await prefs.setString('link$counter', formDataLink!);
    setState(() {
      widget.switchscreen();
    });
  }

  void cancel() {
    setState(() {
      widget.switchscreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 10,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              'Add New Switch',
              style: TextStyle(fontSize: 34),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  formDataName = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Name of the Switch',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 62, 62, 62),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  formDataLink = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Enter Link to the pin number eg:<ip:port>/26/',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 62, 62, 62),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: addpin,
                  child: const Text('Add Pin'),
                ),
                ElevatedButton(
                  onPressed: cancel,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
