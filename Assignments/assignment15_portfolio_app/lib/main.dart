import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Portfolio App",
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int _counter = -1;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("  Portfolio App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: (_counter >= 0)
                ? const Color.fromARGB(255, 255, 238, 232)
                : Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(children: [
                  const SizedBox(
                    height: 10,
                  ),
                  (_counter >= 1)
                      ? const Text(
                          "Name : Darshan Sureshchandra Jain",
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 168, 121, 249),
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 10,
                  ),
                  (_counter >= 2)
                      ? Image.asset(
                          "images/passport.jpg",
                          height: 250,
                          width: 250,
                        )
                      : Container(),
                  const SizedBox(
                    height: 10,
                  ),
                  (_counter >= 3)
                      ? const Text(
                          "College : JSPM Narhe Technical Campus, Narhe, Pune",
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 132, 123),
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 10,
                  ),
                  (_counter >= 4)
                      ? Image.asset(
                          "images/jspmNtc.png",
                          height: 250,
                          width: 250,
                        )
                      : Container(),
                  const SizedBox(
                    height: 10,
                  ),
                  (_counter >= 5)
                      ? const Text(
                          "Dream Company : NVIDIA",
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 59, 185, 59),
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 10,
                  ),
                  (_counter >= 6)
                      ? Image.asset(
                          "images/nvidia.jpeg",
                          height: 250,
                          width: 250,
                        )
                      : Container(),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
