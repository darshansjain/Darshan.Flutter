import 'package:appbar_container/Assign10.dart';
import 'package:appbar_container/Assign2.dart';
import 'package:appbar_container/Assign3.dart';
import 'package:appbar_container/Assign4.dart';
import 'package:appbar_container/Assign5.dart';
import 'package:appbar_container/Assign6.dart';
import 'package:appbar_container/Assign7.dart';
import 'package:appbar_container/Assign8.dart';
import 'package:appbar_container/Assign9.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar and Container',
      home: Assignment10(),
    );
  }
}

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment1"),
        actions: const [
          Icon(Icons.comment),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.bookmark),
        ],
        backgroundColor: Colors.orange,
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
