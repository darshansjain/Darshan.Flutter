import 'package:flutter/material.dart';

class Assign7 extends StatelessWidget {
  const Assign7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        // color: Colors.yellow,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(
            color: Colors.blue,
            width: 5,
          ),
        ),
      ),
    );
  }
}
