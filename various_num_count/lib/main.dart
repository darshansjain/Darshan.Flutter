import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: const Assignment1(
        title: 'Various Numbers',
      ),
    );
  }
}

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key, required this.title});

  final String title;

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  int _countPali = 0;
  int _countArm = 0;
  int _countStro = 0;
  final List ls = [343, 4534, 145, 3344, 676, 1221, 153];

  void _isPalindrome() {
    int _count = 0;
    setState(() {
      for (int i = 0; i < ls.length; i++) {
        int temp = ls[i];
        int n = 0;

        while (temp != 0) {
          int rem = temp % 10;
          n = n * 10 + rem;
          temp ~/= 10;
        }
        if (ls[i] == n) _count++;
        _countPali = _count;
      }
    });
  }

  void _isStrongNumber() {
    int _count = 0;
    setState(() {
      for (int i = 0; i < ls.length; i++) {
        int temp = ls[i];
        int sum = 0;

        while (temp != 0) {
          int rem = temp % 10;
          int fact = 1;
          for (int i = 1; i <= rem; i++) {
            fact = fact * i;
          }
          sum = sum + fact;
          temp ~/= 10;
        }

        if (ls[i] == sum) _count++;
      }
      _countStro = _count;
    });
  }

  void _isArmstrong() {
    int _count = 0;
    setState(() {
      for (int i = 0; i < ls.length; i++) {
        int temp = ls[i];
        int n = 0;
        int digiCnt = 0;

        while (temp != 0) {
          digiCnt++;
          temp ~/= 10;
        }
        temp = ls[i];
        int sum = 0;

        while (temp != 0) {
          int rem = temp % 10;
          int prod = 1;
          for (int i = 1; i <= digiCnt; i++) {
            prod = prod * rem;
          }
          sum = sum + prod;
          temp ~/= 10;
        }
        if (ls[i] == sum) _count++;
        _countArm = _count;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Various Types of Numbers"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Click to get count of Palindrome No :',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '$_countPali',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: _isPalindrome,
                child: const Text("print"),
              ),
              const Text(
                'Click to get count of Strong No :',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '$_countStro',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: _isStrongNumber, child: const Text("print")),
              const Text(
                'Click to get count of ArmStrong No :',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '$_countArm',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: _isArmstrong, child: const Text("print")),
            ],
          ),
        ));
  }
}
