import 'package:flutter/material.dart';

// ignore: camel_case_types
class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_upState();
}

// ignore: camel_case_types
class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        reverse: true,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 25, top: 60),
              child: const Text('Register here!',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 33,
                      fontWeight: FontWeight.bold)),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 150, left: 22, right: 20),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 110, bottom: 5),
                        child: const Text(
                          "Enter Your @Email Address",
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
                            hintText: "Enter Your @Email",
                            hintStyle: const TextStyle(color: Colors.white60),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 135, bottom: 5),
                        child: const Text(
                          'Enter your new password',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey)),
                            hintText: 'Enter your password',
                            hintStyle: const TextStyle(color: Colors.white60),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 159, bottom: 5),
                        child: const Text(
                          'Confirm your password',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey)),
                            hintText: 'Confirm your password',
                            hintStyle: const TextStyle(color: Colors.white60),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(360, 50)),
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(letterSpacing: 1, fontSize: 20),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 179),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: const Text(
                              "Already have an Account?",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                              ),
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
