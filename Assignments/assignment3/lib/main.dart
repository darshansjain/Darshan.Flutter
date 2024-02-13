import 'package:assignment3/ManyColors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: Assignment3(),
      home: ManyColors(),
    );
  }
}

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  // Color containerColor1 = Colors.orange;
  // Color containerColor2 = Colors.blue;
  // Color containerColor3 = Colors.pink;

  bool c1 = false;
  bool c2 = false;

  Color showBox1Color() {
    if (c1) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }

  Color showBox2Color() {
    if (c2) {
      return Colors.orange;
    } else {
      return Colors.purple;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Assignment 3")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: showBox1Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (c1) {
                      c1 = false;
                    } else {
                      c1 = true;
                    }
                  });
                },
                child: const Text("Button 1"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: showBox2Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (c2) {
                      c2 = false;
                    } else {
                      c2 = true;
                    }
                  });
                },
                child: const Text("Button 2"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
