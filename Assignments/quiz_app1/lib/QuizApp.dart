import 'package:flutter/material.dart';

class SingleQuestionModel {
  final String? question;
  final List<String>? options;
  final int? ansIndex;

  const SingleQuestionModel({this.question, this.options, this.ansIndex});
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<SingleQuestionModel> allQuestion = [
    const SingleQuestionModel(
      question: "What is Dart primarily used for?",
      options: [
        "Web development",
        "Mobile app development",
        "Game development",
        "All of the above"
      ],
      ansIndex: 3,
    ),
    const SingleQuestionModel(
      question: "In Dart, which keyword is used to define a constant variable?",
      options: ["var", "final", "const", "let"],
      ansIndex: 2,
    ),
    const SingleQuestionModel(
      question: "What is the difference between a const and a final variable?",
      options: [
        "No difference, they achieve the same thing.",
        "const is for compile-time constants, final for runtime constants",
        "final can be reassigned once, const cannot be changed.",
        "const variables must be initialized, final can be uninitialized."
      ],
      ansIndex: 1,
    ),
    const SingleQuestionModel(
      question: "How can you define a private variable in a class?",
      options: [
        "an underscore _ before the variable name",
        "Using the private keyword.",
        "Both A and B",
        "Neither A nor B"
      ],
      ansIndex: 0,
    ),
    const SingleQuestionModel(
      question:
          "Which framework is primarily built using the Dart programming language?",
      options: ["Django", "Spring Boot", "Flutter", "React Native"],
      ansIndex: 2,
    )
  ];

  MaterialStateProperty<Color?> checkedAns(int buttonOption) {
    if (selectedAns != -1) {
      if (buttonOption == allQuestion[questionIndex].ansIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (selectedAns == buttonOption) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(Colors.white);
      }
    } else {
      return const MaterialStatePropertyAll(Colors.white);
    }
  }

  void checkedPageValidation() {
    if (selectedAns == -1) {
      return;
    }

    if (selectedAns == allQuestion[questionIndex].ansIndex) {
      score++;
    }
    selectedAns = -1;
    questionIndex++;

    if (questionIndex == allQuestion.length) {
      screen = 2;
    }
    setState(() {});
  }

  int screen = 0;
  int questionIndex = 0;
  int selectedAns = -1;
  int score = 0;
  Scaffold isQuestionScreen() {
    if (screen == 0) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
              color: Color.fromARGB(255, 5, 7, 34),
            ),
          ),
          foregroundColor: const Color.fromARGB(255, 5, 7, 34),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 5, 7, 34),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                "  Quiz Your Way to",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.start,
              ),
              const Text(
                "  Mastery!",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 45,
              ),
              Image.asset(
                "images/dartlogo.jpeg",
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Check your knowlege of Dart",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 65,
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    screen = 1;
                  });
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    minimumSize: MaterialStatePropertyAll(Size(100, 50))),
                child: const Text(
                  "Start Quiz",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 5, 7, 34),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      );
    } else if (screen == 1) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
              color: Color.fromARGB(255, 5, 7, 34),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: const Color.fromARGB(255, 5, 7, 34),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Question : ${questionIndex + 1}/${allQuestion.length}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Question : ${allQuestion[questionIndex].question}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  if (selectedAns == -1) {
                    selectedAns = 0;
                  }
                  setState(() {});
                },
                style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size(370, 60)),
                  backgroundColor: checkedAns(0),
                  elevation: MaterialStateProperty.all(5),
                  shadowColor: const MaterialStatePropertyAll(Colors.blue),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: Text(
                  "A. ${allQuestion[questionIndex].options![0]}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color.fromARGB(255, 5, 7, 34),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (selectedAns == -1) {
                    selectedAns = 1;
                  }
                  setState(() {});
                },
                style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size(370, 60)),
                  backgroundColor: checkedAns(1),
                  elevation: MaterialStateProperty.all(5),
                  shadowColor: const MaterialStatePropertyAll(Colors.blue),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: Text(
                  "B. ${allQuestion[questionIndex].options![1]}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color.fromARGB(255, 5, 7, 34),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (selectedAns == -1) {
                    selectedAns = 2;
                  }
                  setState(() {});
                },
                style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size(370, 60)),
                  backgroundColor: checkedAns(2),
                  elevation: MaterialStateProperty.all(5),
                  shadowColor: const MaterialStatePropertyAll(Colors.blue),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: Text(
                  "C. ${allQuestion[questionIndex].options![2]}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color.fromARGB(255, 5, 7, 34),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (selectedAns == -1) {
                    selectedAns = 3;
                  }
                  setState(() {});
                },
                style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size(370, 60)),
                  backgroundColor: checkedAns(3),
                  elevation: MaterialStateProperty.all(5),
                  shadowColor: const MaterialStatePropertyAll(Colors.blue),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: Text(
                  "D. ${allQuestion[questionIndex].options![3]}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color.fromARGB(255, 5, 7, 34),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: checkedPageValidation,
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Color.fromARGB(255, 5, 7, 34),
          ),
        ),
      );
    } else {
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Quiz App",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  color: Color.fromARGB(255, 5, 7, 34)),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 5, 7, 34),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                // const Text(
                //   "   Congratulation !...",
                //   style: TextStyle(
                //     fontSize: 40,
                //     fontWeight: FontWeight.w900,
                //     color: Colors.orange,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "images/congrats.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "You have completed your test",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
                const Text(
                  "Succesfully ...!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Your Score",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "${score + 0}/${allQuestion.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      screen = 0;
                      questionIndex = 0;
                      score = 0;
                      selectedAns = -1;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(100, 50)),
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 5, 7, 34),
                    ),
                  ),
                ),
              ],
            ),
          ));
    }
  }

  @override
  Widget build(BuildContext contenxt) {
    return isQuestionScreen();
  }
}
