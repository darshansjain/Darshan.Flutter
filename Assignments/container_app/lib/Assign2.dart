import 'package:flutter/material.dart';

class Assign2 extends StatelessWidget {
  const Assign2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        height: 400,
        width: 300,
        child: Container(
          color: Colors.red,
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 40,
          ),
        ),
      ),
    );
  }
}
