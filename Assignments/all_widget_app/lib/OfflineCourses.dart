import 'package:flutter/material.dart';

class OflineCourse extends StatelessWidget {
  List<String> crsList = [
    "images/bootcamp.jpeg",
    "images/flutter.jpeg",
    "images/javaDsa.jpeg",
    "images/cpp.jpeg"
  ];

  List<String> courseName = ["Bootcamp", "Flutter", "Java DSA", "CPP"];

  OflineCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Online Courses'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 189, 187, 187),
              blurRadius: 10.0,
              spreadRadius: 5.0,
              offset: Offset(0.0, 4.0), // Adjust x and y for desired direction
            ),
          ],
        ),
        child: ListView.builder(
          itemCount: crsList.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(9.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 189, 187, 187),
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(
                        0.0, 4.0), // Adjust x and y for desired direction
                  ),
                ],
              ),
              margin: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9, // Maintain image aspect ratio
                    child: Image.asset(
                      crsList[index],
                      fit: BoxFit
                          .cover, // Cover container while maintaining aspect ratio
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    courseName[index],
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add your onPressed logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 96, 100,
                          104), // Set the background color of the button
                      minimumSize: const Size(800, 50.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(9),
                          bottomRight: Radius.circular(9),
                        ),
                      ), // Set the minimum size of the button
                    ),
                    child: const Text(
                      'Admission Closed',
                      style: TextStyle(
                        color: Colors.white, // Set the text color of the button
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
