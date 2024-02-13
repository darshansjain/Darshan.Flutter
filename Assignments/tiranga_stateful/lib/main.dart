import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Tiranga",
      home: Flag(),
    );
  }
}

class Flag extends StatefulWidget {
  const Flag({super.key});

  @override
  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  int _counter = -1;

  Widget _pole() {
    return Container(
      height: 500,
      width: 15,
      color: const Color.fromARGB(255, 133, 84, 65),
    );
  }

  Widget _flagShades(Color shade) {
    return Container(
      height: 80,
      width: 280,
      color: shade,
    );
  }

  Widget _flagMidShades(Color shade) {
    return Container(
        height: 80,
        width: 280,
        color: shade,
        child: (_counter >= 3 && shade == Colors.white)
            ? Image.asset(
                "images/ashokChakra.png",
                height: 70,
                width: 70,
              )
            : Container());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tiranga Stateful"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _counter++;
        }),
        child: const Icon(Icons.add),
      ),
      body: Container(
        color: const Color.fromARGB(255, 247, 237, 237),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (_counter >= 0) ? _pole() : Container(),
            Column(
              children: [
                (_counter >= 1) ? _flagShades(Colors.orange) : Container(),
                (_counter >= 2) ? _flagMidShades(Colors.white) : Container(),
                (_counter >= 4) ? _flagShades(Colors.green) : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
