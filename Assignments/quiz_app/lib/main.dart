// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Quiz App",
//       home: QuizApp(),
//     );
//   }
// }

// class QuizApp extends StatefulWidget {
//   const QuizApp({super.key});

//   @override
//   State<QuizApp> createState() => _QuizAppState();
// }

// class _QuizAppState extends State<QuizApp> {
//   int counter = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Tech Quiz"),
//         backgroundColor: Colors.orange,
//       ),
//       body: Container(
//         color: const Color.fromARGB(255, 255, 255, 255),
//         width: double.infinity,
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 15,
//             ),
//             Text("Question : $counter/10"),
//             const SizedBox(
//               height: 15,
//             ),
//             Text("Question $counter : What is Flutter"),
//             const SizedBox(
//               height: 15,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text("Option 1"),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text("Option 2"),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text("Option 3"),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text("Option 4"),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//           onPressed: () {}, child: const Icon(Icons.arrow_forward)),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int counter = 1;
  int score = 0;
  bool optionSelected =
      false; // Variable to track whether an option has been selected

  // List of questions
  List<Question> questions = [
    Question(
        "What is Flutter?",
        [
          "A programming language",
          "A UI toolkit",
          "A database",
          "A design pattern"
        ],
        1),
    Question("What language is Flutter written in?",
        ["Java", "Dart", "JavaScript", "Python"], 1),
    // Add more questions as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tech Quiz",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "Question : $counter/${questions.length}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Question $counter : ${questions[counter - 1].questionText}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // Display options using a ListView.builder
            ListView.builder(
              shrinkWrap: true,
              itemCount: questions[counter - 1].options.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Check if an option has already been selected
                      if (!optionSelected) {
                        bool isCorrect =
                            (index == questions[counter - 1].correctOption);
                        setState(() {
                          optionSelected = true; // Mark option as selected
                        });
                        // Move to the next question
                        nextQuestion(isCorrect);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      // Change the background color based on correctness
                      backgroundColor: optionSelected
                          ? (index == questions[counter - 1].correctOption)
                              ? Colors.green
                              : Colors.red
                          : null, // Set to null initially
                    ),
                    child: ListTile(
                      title: Text(questions[counter - 1].options[index]),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Move to the next question when the FloatingActionButton is pressed
          nextQuestion(
              false); // Passing false as the answer since no specific answer is selected
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }

  // Function to move to the next question
  void nextQuestion(bool isCorrect) {
    setState(() {
      if (isCorrect) {
        score++;
      }

      if (counter < questions.length) {
        counter++;
        optionSelected = false; // Reset optionSelected for the next question
      } else {
        // Display the final score when all questions are answered
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Quiz Completed"),
              content: Text("Your Score: $score/${questions.length}"),
              actions: [
                TextButton(
                  onPressed: () {
                    // Reset the quiz for a new attempt
                    setState(() {
                      counter = 1;
                      score = 0;
                      optionSelected = false; // Reset optionSelected
                    });
                    Navigator.of(context).pop();
                  },
                  child: const Text("Try Again"),
                ),
              ],
            );
          },
        );
      }
    });
  }
}

class Question {
  String questionText;
  List<String> options;
  int correctOption;

  Question(this.questionText, this.options, this.correctOption);
}

// import "package:flutter/material.dart";
// import "package:quiz_app/start_screen.dart";

// void main() => runApp(const MaterialApp(
//       home: Scaffold(
//         body: Start_Screen(),
//       ),
//     ));
