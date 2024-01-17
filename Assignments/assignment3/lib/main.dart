import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Assignment3(),
    );
  }
}

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  _Assignment3State createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  Color containerColor1 = Colors.orange;
  Color containerColor2 = Colors.blue;
  Color containerColor3 = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Assignment 3")),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: containerColor1,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      containerColor1 = (containerColor1 == Colors.orange)
                          ? Colors.blue
                          : Colors.orange;
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
                  color: containerColor2,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      containerColor2 = (containerColor2 == Colors.blue)
                          ? Colors.pink
                          : Colors.blue;
                    });
                  },
                  child: const Text("Button 2"),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: containerColor3,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      containerColor3 = (containerColor3 == Colors.pink)
                          ? Colors.orange
                          : Colors.pink;
                    });
                  },
                  child: const Text("Button 3"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
