import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "To-Do List",
      home: ToDoListApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoListApp extends StatefulWidget {
  const ToDoListApp({super.key});

  @override
  State<ToDoListApp> createState() => _ToDoListAppState();
}

class _ToDoListAppState extends State<ToDoListApp> {
  @override
  Widget build(BuildContext context) {
    Color bkColors(int idx) {
      if ((idx + 1) % 4 == 1) {
        return const Color.fromRGBO(250, 232, 232, 1);
      } else if ((idx + 1) % 4 == 2) {
        return const Color.fromRGBO(232, 237, 250, 1);
      } else if ((idx + 1) % 4 == 3) {
        return const Color.fromRGBO(250, 249, 232, 1);
      } else {
        return const Color.fromRGBO(250, 232, 250, 1);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26.0,
            color: Color.fromRGBO(255, 255, 255, 1),
          )),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: SizedBox(
        height: double.infinity,
        //width: ,
        child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, count) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: bkColors(count),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(
                          0, 0, 0, 0.1), // Adjust opacity for desired subtlety
                      blurRadius: 20.0,
                      offset: Offset(0.0,
                          10.0), // Adjust offset for desired direction and distance
                    ),
                  ],
                ),

                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(10),
                //height: 112,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 64,
                        ),
                        Expanded(
                          child: Text(
                            "Lorem Ipsum is simply setting industry.",
                            style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 5,
                    // ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          minRadius: 28,
                          child: Image.asset("images/circleAvtar.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(84, 84, 84, 1),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Text(
                          "21 Feb 2024",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(132, 132, 132, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Spacer(),
                        Image.asset("images/pen.png"),
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset("images/delete.png"),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showInputDialog(context);
        },
        //backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          weight: 40,
          size: 50,
        ),
      ),
    );
  }

  void _showInputDialog(BuildContext context) {
    TextEditingController _textTitleController = TextEditingController();
    TextEditingController _textDescriptionController = TextEditingController();
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Create Task",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                        //color: Color.fromRGBO(84, 84, 84, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Title",
                textAlign: TextAlign.left,
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                      color: Color.fromRGBO(0, 139, 148, 1),
                      fontSize: 11,
                      fontWeight: FontWeight.w400),
                ),
              ),
              TextField(
                controller: _textTitleController,
                decoration: const InputDecoration(
                  // hintText: 'Enter your text',

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Description",
                textAlign: TextAlign.left,
                style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                      color: Color.fromRGBO(0, 139, 148, 1),
                      fontSize: 11,
                      fontWeight: FontWeight.w400),
                ),
              ),
              TextField(
                controller: _textDescriptionController,
                decoration: const InputDecoration(
                  // hintText: 'Enter your text',

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Process the text input
                    String userInput = _textTitleController.text;
                    // Perform actions with userInput
                    print('User input: $userInput');
                    // Close the dialog
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
                    minimumSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Submit',
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
