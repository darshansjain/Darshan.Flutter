import 'package:flutter/material.dart';

class Assignment9 extends StatelessWidget {
  const Assignment9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hello Core2Web"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              //color: Colors.blue,
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              //color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
