import 'package:flutter/material.dart';

class Assign5 extends StatelessWidget {
  const Assign5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 300,
        // color: Colors.yellow,
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.yellow,
          width: 5,
        )),
      ),
    );
  }
}
