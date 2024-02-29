import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  final int idx;
  const Course({super.key, required this.idx});

  @override
  State<Course> createState() => _CourseState(idx);
}

class _CourseState extends State<Course> {
  int idx;
  _CourseState(this.idx);
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
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(courseName[idx]),
      ),
      body: SizedBox(
        height: h,
        width: w,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: h * 0.85,
              width: w,
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
                    offset: Offset(
                        0.0, 4.0), // Adjust x and y for desired direction
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Container(
                          width: w * 0.5,
                          height: 60,
                          padding: const EdgeInsets.all(17.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 224, 68, 68),
                                blurRadius: 7.0,
                                spreadRadius: 3.0,
                                offset: Offset(0.0,
                                    4.0), // Adjust x and y for desired direction
                              ),
                            ],
                          ),
                          child: const Text("C Programming"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: w * 0.5,
                        ),
                        Container(
                          width: w * 0.5,
                          height: 60,
                          padding: const EdgeInsets.all(17.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 78, 107, 255),
                                blurRadius: 7.0,
                                spreadRadius: 3.0,
                                offset: Offset(0.0,
                                    4.0), // Adjust x and y for desired direction
                              ),
                            ],
                          ),
                          child: const Text("    Data Structure in C"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Container(
                          width: w * 0.5,
                          height: 60,
                          padding: const EdgeInsets.all(17.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 224, 68, 68),
                                blurRadius: 7.0,
                                spreadRadius: 3.0,
                                offset: Offset(0.0,
                                    4.0), // Adjust x and y for desired direction
                              ),
                            ],
                          ),
                          child: const Text("Logic Building"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: w * 0.5,
                        ),
                        Container(
                          width: 0.5 * w,
                          height: 60,
                          padding: const EdgeInsets.all(17.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 78, 107, 255),
                                blurRadius: 7.0,
                                spreadRadius: 3.0,
                                offset: Offset(0.0,
                                    4.0), // Adjust x and y for desired direction
                              ),
                            ],
                          ),
                          child: const Text("C++ Programming"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Container(
                          width: w * 0.5,
                          height: 60,
                          padding: const EdgeInsets.all(17.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 224, 68, 68),
                                blurRadius: 7.0,
                                spreadRadius: 3.0,
                                offset: Offset(0.0,
                                    4.0), // Adjust x and y for desired direction
                              ),
                            ],
                          ),
                          child: const Text("Operating System"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: w * 0.5,
                        ),
                        Container(
                          width: 0.5 * w,
                          height: 60,
                          padding: const EdgeInsets.all(17.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 78, 107, 255),
                                blurRadius: 7.0,
                                spreadRadius: 3.0,
                                offset: Offset(0.0,
                                    4.0), // Adjust x and y for desired direction
                              ),
                            ],
                          ),
                          child: const Text("Certificate"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
