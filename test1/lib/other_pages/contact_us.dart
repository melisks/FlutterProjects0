import 'package:flutter/material.dart';

// ignore: camel_case_types
class contact_us extends StatefulWidget {
  const contact_us({Key? key}) : super(key: key);

  @override
  State<contact_us> createState() => _contact_usState();
}

// ignore: camel_case_types
class _contact_usState extends State<contact_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 60),
              child: const Text('Get in touch !!',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 33,
                      fontWeight: FontWeight.bold)),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 140, left: 22, right: 20),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 100, bottom: 5),
                        child: const Text(
                          'Enter Your @Email Address',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey)),
                            hintText: 'Enter Your @Email',
                            hintStyle: const TextStyle(color: Colors.white60),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 200, bottom: 5),
                        child: const Text(
                          'Enter Mobile No.',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey)),
                            hintText: 'Enter Mobile No.',
                            hintStyle: const TextStyle(color: Colors.white60),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 160, bottom: 5),
                        child: const Text(
                          'Problem Description',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 170,
                        child: TextField(
                          expands: true,
                          maxLines: null,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.grey)),
                              hintStyle: const TextStyle(color: Colors.white60),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 240),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(100, 45)),
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            child: const Text(
                              'Submit',
                              style: TextStyle(letterSpacing: 1, fontSize: 20),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
