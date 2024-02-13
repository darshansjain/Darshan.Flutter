import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: assi1(),
    );
  }
}

class assi1 extends StatefulWidget {
  const assi1({super.key});
  @override
  State<assi1> createState() => _assi1State();
}

class _assi1State extends State<assi1> {
  int? _cnt = 0;
  void _print() {
    setState(() {
      _cnt = _cnt! + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table of 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("click button to print table of 2"),
            SizedBox(
              height: 20,
            ),
            Text("$_cnt"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: _print, child: const Text("print")),
          ],
        ),
      ),
    );
  }
}
