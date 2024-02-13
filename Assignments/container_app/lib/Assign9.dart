import 'package:flutter/material.dart';

class Assign9 extends StatelessWidget {
  const Assign9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 300,
        // color: Colors.yellow,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(
            color: Colors.blue,
            width: 5,
          ),
          gradient: const LinearGradient(
            stops: [0.1, 0.5],
            colors: [Colors.red, Colors.green],
          ),
        ),
      ),
    );
  }
}
