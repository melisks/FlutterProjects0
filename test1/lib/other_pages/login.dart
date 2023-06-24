import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        reverse: true,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 25, top: 100),
              child: const Text('Welcome \n Back!',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 33,
                      fontWeight: FontWeight.bold)),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 200, left: 22, right: 20),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 170, bottom: 5),
                        child: const Text(
                          "Enter Your Wheelchair I'd ",
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
                            hintText: "Enter Your Wheelchair I'd ",
                            hintStyle: const TextStyle(color: Colors.white60),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 215, bottom: 5),
                        child: const Text(
                          'Enter your password',
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
                      Padding(
                        padding: const EdgeInsets.only(right: 220),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/passchanger');
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.blue[100],
                                fontSize: 15,
                              ),
                            )),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(360, 50)),
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(letterSpacing: 1, fontSize: 20),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 185),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/sign_up');
                            },
                            child: const Text(
                              "Don't have an Account?",
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
