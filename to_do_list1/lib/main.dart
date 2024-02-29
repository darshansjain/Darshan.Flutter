import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "To Do List",
      home: ToDoList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<Task> taskList = [];
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  FocusNode titleF = FocusNode();
  FocusNode descriptionF = FocusNode();
  FocusNode date = FocusNode();
  bool isTitleEmpty = false;
  bool isDescriptionEmpty = false;
  bool isDateEmpty = false;

// Creating task using bottom Sheet
  void showBottomSheet(bool doEdit, [Task? taskObj]) {
    showModalBottomSheet(
        isDismissible: true,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Text(
                      (!doEdit) ? "Create Task" : "Edit Task",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Title",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                  ),
                  TextField(
                    controller: _titleController,
                    focusNode: titleF,
                    maxLines: 2,
                    minLines: 1,
                    decoration: InputDecoration(
                      // hintText: "Enter Title",
                      errorText: isTitleEmpty ? "Title can't be empty" : null,

                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(15),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                    ),
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                    ),
                  ),
                  // (isTitleEmpty)
                  //     ? Text("Please enter title",
                  //         style: GoogleFonts.quicksand(
                  //           textStyle: const TextStyle(
                  //             fontWeight: FontWeight.w600,
                  //             fontSize: 11,
                  //             color: Colors.red,
                  //           ),
                  //         ))
                  //     : const SizedBox(
                  //         height: 0.0,
                  //       ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Description",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color.fromRGBO(0, 139, 148, 1)),
                    ),
                  ),
                  TextField(
                    controller: _descriptionController,
                    focusNode: descriptionF,
                    minLines: 1,
                    maxLines: 3,
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                    ),
                    decoration: InputDecoration(
                      // hintText: "Enter Title",
                      errorText: isDescriptionEmpty
                          ? "Description can't be empty"
                          : null,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0xFF008B94),
                        ),
                      ),
                    ),
                  ),
                  // (isDescriptionEmpty)
                  //     ? Text("Please enter description",
                  //         style: GoogleFonts.quicksand(
                  //           textStyle: const TextStyle(
                  //             fontWeight: FontWeight.w600,
                  //             fontSize: 11,
                  //             color: Colors.red,
                  //           ),
                  //         ))
                  //     : const SizedBox(
                  //         height: 0.0,
                  //       ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Date",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color.fromRGBO(0, 139, 148, 1)),
                    ),
                  ),
                  TextField(
                    controller: _dateController,
                    focusNode: date,
                    minLines: 1,
                    decoration: InputDecoration(
                      // hintText: "Enter Title",
                      errorText: isDateEmpty ? "Date can't be empty" : null,
                      suffixIcon: const Icon(Icons.calendar_month_outlined),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: Color(0xFF008B94),
                        ),
                      ),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? picker = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2026),
                      );
                      String formatedDate = DateFormat.yMMMd().format(picker!);
                      setState(() {
                        _dateController.text = formatedDate;
                      });
                    },
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                    ),
                  ),
                  // (isDateEmpty)
                  //     ? Text("Please enter date",
                  //         style: GoogleFonts.quicksand(
                  //           textStyle: const TextStyle(
                  //             fontWeight: FontWeight.w600,
                  //             fontSize: 11,
                  //             color: Colors.red,
                  //           ),
                  //         ))
                  //     : const SizedBox(
                  //         height: 0.0,
                  //       ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // if (_titleController.text.trim().isEmpty ||
                        //     _descriptionController.text.trim().isEmpty ||
                        //     _dateController.text.trim().isEmpty) {
                        //   if (_titleController.text.trim().isEmpty) {
                        //     isTitleEmpty = true;
                        //     titleF.unfocus();
                        //   } else {
                        //     isTitleEmpty = false;
                        //     titleF.nextFocus();
                        //   }
                        //   if (_descriptionController.text.trim().isEmpty) {
                        //     isDescriptionEmpty = true;
                        //     descriptionF.unfocus();
                        //   } else {
                        //     isDescriptionEmpty = false;
                        //     descriptionF.nextFocus();
                        //   }
                        //   if (_dateController.text.trim().isEmpty) {
                        //     isDateEmpty = true;
                        //     date.unfocus();
                        //   } else {
                        //     isDateEmpty = false;
                        //     date.nextFocus();
                        //   }
                        //   setState(() {});
                        // } else {
                        //   setState(() {
                        //     taskList.add(
                        //       Task(
                        //           title: _titleController.text.trim(),
                        //           description:
                        //               _descriptionController.text.trim(),
                        //           date: _dateController.text),
                        //     );
                        //     isTitleEmpty = false;
                        //     isDescriptionEmpty = false;
                        //     isDateEmpty = false;
                        //     _titleController.clear();
                        //     _descriptionController.clear();
                        //     _dateController.clear();
                        //   });
                        !doEdit ? submit(doEdit) : submit(doEdit, taskObj);
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                        minimumSize: const Size(300, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        !doEdit ? "Submit" : "Update",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void submit(bool doEdit, [Task? taskObj]) {
    if (_titleController.text.trim().isNotEmpty &&
        _descriptionController.text.trim().isNotEmpty &&
        _dateController.text.trim().isNotEmpty) {
      if (!doEdit) {
        setState(() {
          taskList.add(
            Task(
                title: _titleController.text.trim(),
                description: _descriptionController.text.trim(),
                date: _dateController.text),
          );
        });
      } else {
        setState(() {
          taskObj!.title = _titleController.text.trim();
          taskObj.description = _descriptionController.text.trim();
          taskObj.date = _dateController.text.trim();
        });
        Navigator.of(context).pop();
      }
    } else {
      if (_titleController.text.trim().isEmpty) {
        isTitleEmpty = true;
        // titleF.unfocus();
      } else {
        isTitleEmpty = false;
        // titleF.nextFocus();
      }
      if (_descriptionController.text.trim().isEmpty) {
        isDescriptionEmpty = true;
        descriptionF.unfocus();
      } else {
        isDescriptionEmpty = false;
        descriptionF.nextFocus();
      }
      if (_dateController.text.trim().isEmpty) {
        isDateEmpty = true;
        date.unfocus();
      } else {
        isDateEmpty = false;
        date.nextFocus();
      }
      setState(() {});
    }

    clearTextControllers();
  }

  void clearTextControllers() {
    _titleController.clear();
    _descriptionController.clear();
    _dateController.clear();
  }

// For deleting Task from list //

  void removeTask(int index) {
    setState(() {
      taskList.remove(taskList[index]);
    });
  }

// For Editing the task  //

  void editTask(int index) {
    _titleController.text = taskList[index].title!;
    _descriptionController.text = taskList[index].description!;
    _dateController.text = taskList[index].date!;

    showBottomSheet(true, taskList[index]);
  }

  List<Color> cardColor = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1)
  ];

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _dateController.dispose();
    _descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do List",
          textAlign: TextAlign.start,
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: cardColor[index % 4],
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(0, 10),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Image.asset("image/circleImg.png"),
                        //color: Colors.white,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${taskList[index].title}",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            // Expanded(
                            //   child:
                            Text(
                              "${taskList[index].description}",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
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
                        "${taskList[index].date}",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          editTask(index);
                          isTitleEmpty = false;
                          isDescriptionEmpty = false;
                          isDateEmpty = false;
                        },
                        child: const Icon(
                          Icons.edit,
                          color: Color.fromRGBO(2, 167, 177, 1),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                          onTap: () {
                            removeTask(index);
                          },
                          child: const Icon(
                            Icons.delete,
                            color: Color.fromRGBO(2, 167, 177, 1),
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        onPressed: () {
          isTitleEmpty = false;
          isDateEmpty = false;
          isDescriptionEmpty = false;
          showBottomSheet(false);
          clearTextControllers();
        },
        child: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color.fromRGBO(0, 139, 148, 1)),
          child: const Icon(
            Icons.add,
            size: 40,
            color: Colors.white,
            //fill: 10,
          ),
        ),
      ),
    );
  }
}

class Task {
  String? title;
  String? description;
  String? date;

  Task({this.title, this.description, this.date});
}
