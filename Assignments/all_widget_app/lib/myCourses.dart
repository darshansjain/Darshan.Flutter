import 'package:all_widget_app/Course.dart';
import 'package:all_widget_app/myCourses.dart';
import 'package:flutter/material.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({super.key});
  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  List<String> crsList = [
    "images/bootcamp.jpeg",
    "images/flutter.jpeg",
    "images/javaDsa.jpeg",
    "images/cpp.jpeg"
  ];

  List<String> courseName = ["Bootcamp", "Flutter", "Java DSA", "CPP"];

  List<double> completionPercentage = [70.0, 50.0, 45.0, 67.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Courses'),
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
              height: 280,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(9.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 189, 187, 187),
                    blurRadius: 5.0,
                    spreadRadius: 3.0,
                    offset: Offset(
                        0.0, 4.0), // Adjust x and y for desired direction
                  ),
                ],
              ),
              margin: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Course(idx: index)),
                    );
                  });
                },
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 7.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.0),
                        ),
                      ),
                      child: LinearProgressIndicator(
                        value: completionPercentage[index] / 100.0,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.orange),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      '${completionPercentage[index].toStringAsFixed(1)}%',
                      style: const TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
