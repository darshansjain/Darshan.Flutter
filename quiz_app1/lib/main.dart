import 'package:flutter/material.dart';
import 'package:quiz_app1/QuizApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      home: QuizApp(),
    );
  }
}

// class QuizApp extends StatefulWidget {
//   const QuizApp({super.key});

//   @override
//   State<QuizApp> createState() => _QuizAppState();
// }

// class _QuizAppState extends State<QuizApp> {
//   List<Map> allQuestion = [
//     {
//       "question": "Who is the founder of MicroSoft ?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "ansIndex": 2
//     },
//     {
//       "question": "Who is the founder of Apple ?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "ansIndex": 0
//     },
//     {
//       "question": "Who is the founder of Amazon ?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "ansIndex": 1
//     },
//     {
//       "question": "Who is the founder of Tesla?",
//       "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
//       "ansIndex": 3
//     },
//     {
//       "question": "Who is the founder of Google ?",
//       "options": ["Steve Jobs", "Lary Page", "Bill Gates", "Elon Musk"],
//       "ansIndex": 1
//     }
//   ];

//   int score = 0;
//   int ansIndex = -1;
//   int questionIndex = 0;
//   bool questionSreen = true;
//   List<bool> buttonColor = [false, false, false, false];
//   Color optionColor(int i) {
//     if (ansIndex == -1) {
//       return const Color.fromARGB(255, 242, 240, 237);
//     } else if (ansIndex == i) {
//       return Colors.green;
//     } else if (buttonColor[i] == true) {
//       return Colors.red;
//     } else {
//       return const Color.fromARGB(255, 242, 240, 237);
//     }
//   }

//   Scaffold isQuestionScreen() {
//     if (questionSreen) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Quiz App",
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.w800,
//               color: Colors.orange,
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//         body: Column(
//           children: [
//             const SizedBox(
//               height: 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Question : ${questionIndex + 1}/${allQuestion.length}",
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                       fontSize: 25, fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             SizedBox(
//               width: 500,
//               height: 50,
//               child: Text(
//                 allQuestion[questionIndex]["question"],
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                     fontSize: 20, fontWeight: FontWeight.normal),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (0 == allQuestion[questionIndex]["ansIndex"]) {
//                   // ansIndex = 0;
//                   score++;
//                   setState(() {
//                     ansIndex = 0;
//                     buttonColor[0] = true;
//                   });
//                 } else {
//                   setState(() {
//                     ansIndex = allQuestion[questionIndex]["ansIndex"];

//                     buttonColor[0] = true;
//                   });
//                 }
//               },
//               style: ElevatedButton.styleFrom(
//                 maximumSize: const Size(1000, 50),
//                 minimumSize: const Size(500, 50),
//                 backgroundColor: optionColor(0), //(ansIndex == -1)
//                 //     ? const Color.fromARGB(255, 242, 240, 237)
//                 //     : (ansIndex == 0)
//                 //         ? Colors.green
//                 //         : (buttonColor[0] == true)
//                 //             ? Colors.red
//                 //             : const Color.fromARGB(255, 242, 240, 237)
//               ),
//               child: Text(
//                 "A.${allQuestion[questionIndex]["options"][0]}",
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (1 == allQuestion[questionIndex]["ansIndex"]) {
//                   // ansIndex = 0;
//                   score++;
//                   setState(() {
//                     ansIndex = 1;
//                     buttonColor[1] = true;
//                   });
//                 } else {
//                   setState(() {
//                     ansIndex = allQuestion[questionIndex]["ansIndex"];
//                     buttonColor[1] = true;
//                   });
//                 }
//               },
//               style: ElevatedButton.styleFrom(
//                 maximumSize: const Size(1000, 50),
//                 minimumSize: const Size(500, 50),
//                 backgroundColor: optionColor(1), //(ansIndex == -1)
//                 //     ? const Color.fromARGB(255, 242, 240, 237)
//                 //     : (ansIndex == 1)
//                 //         ? Colors.green
//                 //         : (buttonColor[1] == true)
//                 //             ? Colors.red
//                 //             : const Color.fromARGB(255, 242, 240, 237)
//               ),
//               child: Text(
//                 "B.${allQuestion[questionIndex]["options"][1]}",
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (2 == allQuestion[questionIndex]["ansIndex"]) {
//                   // ansIndex = 0;
//                   score++;
//                   setState(() {
//                     ansIndex = 2;
//                   });
//                 } else {
//                   setState(() {
//                     ansIndex = allQuestion[questionIndex]["ansIndex"];
//                     buttonColor[2] = true;
//                   });
//                 }
//               },
//               style: ElevatedButton.styleFrom(
//                 maximumSize: const Size(1000, 50),
//                 minimumSize: const Size(500, 50),
//                 backgroundColor: optionColor(2), //(ansIndex == -1)
//                 //     ? const Color.fromARGB(255, 242, 240, 237)
//                 //     : (ansIndex == 2)
//                 //         ? Colors.green
//                 //         : (buttonColor[2] == true)
//                 //             ? Colors.red
//                 //             : const Color.fromARGB(255, 242, 240, 237)
//               ),
//               child: Text(
//                 "C.${allQuestion[questionIndex]["options"][2]}",
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (3 == allQuestion[questionIndex]["ansIndex"]) {
//                   // ansIndex = 0;
//                   score++;
//                   setState(() {
//                     ansIndex = 3;
//                   });
//                 } else {
//                   setState(() {
//                     ansIndex = allQuestion[questionIndex]["ansIndex"];
//                     buttonColor[3] = true;
//                   });
//                 }
//               },
//               style: ElevatedButton.styleFrom(
//                 maximumSize: const Size(1000, 50),
//                 minimumSize: const Size(500, 50),
//                 backgroundColor: optionColor(3), //(ansIndex == -1)
//                 //     ? const Color.fromARGB(255, 242, 240, 237)
//                 //     : (ansIndex == 3)
//                 //         ? Colors.green
//                 //         : (buttonColor[3] == true)
//                 //             ? Colors.red
//                 //             : const Color.fromARGB(255, 242, 240, 237)
//               ),
//               child: Text(
//                 "D.${allQuestion[questionIndex]["options"][3]}",
//               ),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             if (ansIndex > -1 && questionIndex < allQuestion.length - 1) {
//               setState(() {
//                 questionIndex++;
//                 ansIndex = -1;
//                 for (int i = 0; i < buttonColor.length; i++) {
//                   buttonColor[i] = false;
//                 }
//               });
//             } else if (questionIndex + 1 == allQuestion.length) {
//               setState(() {
//                 questionSreen = false;
//               });
//             }
//           },
//           backgroundColor: Colors.blue,
//           child: const Icon(
//             Icons.forward,
//             color: Colors.orange,
//           ),
//         ),
//       );
//     } else {
//       return Scaffold(
//           appBar: AppBar(
//             title: const Text(
//               "Quiz App",
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.w800,
//                 color: Colors.orange,
//               ),
//             ),
//             centerTitle: true,
//             backgroundColor: Colors.blue,
//           ),
//           body: SizedBox(
//             width: double.infinity,
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 80,
//                 ),
//                 const Text(
//                   "   Congratulation !...",
//                   style: TextStyle(
//                     fontSize: 40,
//                     fontWeight: FontWeight.w900,
//                     color: Colors.orange,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 const Text(
//                   "Your Score",
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w400,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   "${score + 0}/${allQuestion.length}",
//                   style: const TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(
//                   height: 35,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       questionSreen = true;
//                       questionIndex = 0;
//                       score = 0;
//                       ansIndex = -1;
//                       for (int i = 0; i < buttonColor.length; i++) {
//                         buttonColor[i] = false;
//                       }
//                     });
//                   },
//                   style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                   child: const Text(
//                     "Reset",
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.orange),
//                   ),
//                 ),
//               ],
//             ),
//           ));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isQuestionScreen();
//   }
// }
