import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(80)),
                shape: BoxShape.circle,
                color: const Color.fromRGBO(153, 162, 6, 1),
                border: Border.all(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  width: 3,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(10, 10),
                    blurRadius: 7,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
