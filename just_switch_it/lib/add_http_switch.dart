import 'package:flutter/material.dart';

class AddHttp extends StatefulWidget {
  const AddHttp(this.switchscreen, {super.key});
  final void Function() switchscreen;
  @override
  State<AddHttp> createState() => _AddHttpState();
}

class _AddHttpState extends State<AddHttp> {
  String? formDataName;
  String? formDataLink;

  void addpin() {
    widget.switchscreen();
    submitForm();
  }

  void submitForm() {
    // Process the form data here
    print('$formDataName');
    print('$formDataLink');
    // Perform additional actions with the form data
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
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('add new switch'),
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
            ElevatedButton(
              onPressed: addpin,
              child: const Text('Add Pin'),
            ),
          ],
        ),
      ),
    );
  }
}
