import 'package:flutter/material.dart';

class Assign6 extends StatelessWidget {
  const Assign6({super.key});

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
            )),
      ),
    );
  }
}
