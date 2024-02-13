import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hello Core2Web"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                "asset/air_temperature.png",
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                "asset/app_icon.png",
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                "asset/air_humidity.png",
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
