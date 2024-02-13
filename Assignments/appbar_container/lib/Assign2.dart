import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Assignment2",

          // textAlign: TextAlign.justify,
          style: TextStyle(),
        ),
        actions: const [
          Icon(Icons.comment),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.bookmark),
        ],
        backgroundColor: Colors.purple,
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
