import 'package:all_widget_app/OfflineCourses.dart';
import 'package:all_widget_app/myCourses.dart';
import 'package:all_widget_app/onlineCourses.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: const Text(
          "Hello, Darshan",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 8, 97, 170)),
        ),
        actions: [
          Container(
            width: 50,
            height: 40,
            padding: const EdgeInsets.all(10),
            //color: const Color.fromRGBO(245, 236, 236, 1),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                bottomLeft: Radius.circular(40.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 189, 187, 187),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                  offset:
                      Offset(0.0, 2.0), // Adjust x and y for desired direction
                ),
              ],
            ),
            child: const Icon(
              Icons.qr_code_scanner_outlined,
            ),
          ),
          // const SizedBox(
          //   width: 7,
          // )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                "You must know the code till the core...",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 158, 158, 158),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            SingleChildScrollView(
              child: Container(
                width: w,

                // height: double.infinity,
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

                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text(
                          "    My Courses",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              // Put your logic to update the state here
                              // For example, if you want to navigate to MyCourses screen, you should use Navigator
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyCourses()),
                              );
                            });
                          },
                          child: const Text(
                            "See all   ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: h * 0.28,
                          width: w,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
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
                                          color: Color.fromARGB(
                                              255, 189, 187, 187),
                                          blurRadius: 10.0,
                                          spreadRadius: 5.0,
                                          offset: Offset(0.0,
                                              4.0), // Adjust x and y for desired direction
                                        ),
                                      ],
                                    ),
                                    //height: 500,
                                    margin: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          crsList[index],
                                          height: 100,
                                          fit: BoxFit.fill,
                                        ),
                                        const SizedBox(
                                          height: 13,
                                        ),
                                        Text(
                                          courseName[index],
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          width: 150.0,
                                          height: 7.0,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4.0))),
                                          child: LinearProgressIndicator(
                                            value: completionPercentage[index] /
                                                100.0,
                                            backgroundColor: Colors.grey[300],
                                            valueColor:
                                                const AlwaysStoppedAnimation<
                                                    Color>(Colors.orange),
                                          ),
                                        ),
                                        const SizedBox(height: 10.0),
                                        Text(
                                          '${completionPercentage[index].toStringAsFixed(1)}%',
                                          style:
                                              const TextStyle(fontSize: 15.0),
                                        ),
                                      ],
                                    ));
                              }),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "    Online Courses",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              // Put your logic to update the state here
                              // For example, if you want to navigate to MyCourses screen, you should use Navigator
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OnlineCourse()),
                              );
                            });
                          },
                          child: const Text(
                            "See all   ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: h * 0.29,
                          width: w,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
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
                                          color: Color.fromARGB(
                                              255, 189, 187, 187),
                                          blurRadius: 10.0,
                                          spreadRadius: 5.0,
                                          offset: Offset(0.0,
                                              4.0), // Adjust x and y for desired direction
                                        ),
                                      ],
                                    ),
                                    // height: 100,
                                    margin: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          crsList[index],
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(
                                          height: 13,
                                        ),
                                        Text(courseName[index]),
                                        const Spacer(),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Add your onPressed logic here
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors
                                                .blue, // Set the background color of the button
                                            minimumSize:
                                                const Size(180.0, 50.0),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomLeft: Radius.circular(9),
                                                bottomRight: Radius.circular(9),
                                              ),
                                            ),

                                            // Set the minimum size of the button
                                          ),
                                          child: const Text(
                                            'Buy now',
                                            style: TextStyle(
                                              color: Colors
                                                  .white, // Set the text color of the button
                                            ),
                                          ),
                                        )

                                        // const LinearProgressIndicator(
                                        //   value: 0.7,
                                        //   co
                                        // )
                                      ],
                                    ));
                              }),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "    Offline Courses",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              // Put your logic to update the state here
                              // For example, if you want to navigate to MyCourses screen, you should use Navigator
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OflineCourse()),
                              );
                            });
                          },
                          child: const Text(
                            "See all   ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: h * 0.3,
                          width: w,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
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
                                          color: Color.fromARGB(
                                              255, 189, 187, 187),
                                          blurRadius: 10.0,
                                          spreadRadius: 5.0,
                                          offset: Offset(0.0,
                                              4.0), // Adjust x and y for desired direction
                                        ),
                                      ],
                                    ),
                                    //height: 100,
                                    margin: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          crsList[index],
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(
                                          height: 13,
                                        ),
                                        Text(courseName[index]),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Add your onPressed logic here
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color
                                                .fromARGB(255, 96, 100,
                                                104), // Set the background color of the button
                                            minimumSize:
                                                const Size(180.0, 50.0),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomLeft: Radius.circular(9),
                                                bottomRight: Radius.circular(9),
                                              ), // Set the minimum size of the button
                                            ),
                                          ),
                                          child: const Text(
                                            'Admission closed',
                                            style: TextStyle(
                                              color: Colors
                                                  .white, // Set the text color of the button
                                            ),
                                          ),
                                        )

                                        // const LinearProgressIndicator(
                                        //   value: 0.7,
                                        //   co
                                        // )
                                      ],
                                    ));
                              }),
                        )
                      ],
                    )
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
