import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BottomSheetDemo(),
    );
  }
}

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State {
  TextEditingController _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext ontext) {
              return Column(
                children: [
                  const Text(
                    "Create Task",
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("Title"),
                  const TextField(
                    // controller: _titleController,
                    decoration: InputDecoration(hintText: "Enter Title"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Submit")),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
