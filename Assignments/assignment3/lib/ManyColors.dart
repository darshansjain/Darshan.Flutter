import 'package:flutter/material.dart';

class ManyColors extends StatefulWidget {
  const ManyColors({super.key});

  @override
  State<ManyColors> createState() => _ManyColorsState();
}

class _ManyColorsState extends State<ManyColors> {
  int counter1 = 0;
  int counter2 = 0;

  Color showBox1Color() {
    if (counter1 == 1) {
      return Colors.red;
    } else if (counter1 == 2) {
      return Colors.green;
    } else if (counter1 == 3) {
      return Colors.blue;
    } else {
      return Colors.purple;
    }
  }

  Color showBox2Color() {
    if (counter2 == 1) {
      return Colors.green;
    } else if (counter2 == 2) {
      return Colors.blue;
    } else if (counter2 == 3) {
      return Colors.red;
    } else {
      return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Assignment 3")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: showBox1Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter1++;
                    if (counter1 > 3) {
                      counter1 = 0;
                    }
                  });
                },
                child: const Text("Button 1"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: showBox2Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter2++;
                    if (counter2 > 3) {
                      counter2 = 0;
                    }
                  });
                },
                child: const Text("Button 2"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
