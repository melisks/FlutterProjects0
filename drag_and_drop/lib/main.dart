import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool data1 = false;
  Color draged = Color.fromARGB(255, 20, 80, 176);
  Color place = Color.fromARGB(255, 20, 80, 176);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Draggable(
                onDragStarted: () {
                  setState(() {
                    draged = Color.fromARGB(255, 20, 80, 176);
                    place = Color.fromARGB(255, 153, 154, 157);
                  });
                },
                feedback: Container(
                  height: 150,
                  width: 150,
                  decoration: ShapeDecoration(
                    color: draged,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: ShapeDecoration(
                    color: place,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              DragTarget(
                onWillAccept: (data) {
                  data1 = true;
                  return data1;
                },
                builder: (BuildContext context, List<Object?> candidateData,
                    List<dynamic> rejectedData) {
                  return Container(
                    height: 150,
                    width: 150,
                    decoration: ShapeDecoration(
                      color: data1
                          ? Color.fromARGB(255, 20, 80, 176)
                          : Color.fromARGB(255, 153, 154, 157),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        )),
      ),
    );
  }
}
