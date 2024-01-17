import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Assignment4(),
    );
  }
}

class Assignment4 extends StatefulWidget {
  const Assignment4({
    super.key,
  });

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  bool p1 = false;
  bool p2 = false;
  bool p3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Instagram",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          // actions: [
          //   const Icon(
          //     Icons.favorite_rounded,
          //     color: Colors.red,
          //   )
          // ],
        ),
        // body: ListView(
        //   children: [
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           color: const Color.fromARGB(255, 244, 213, 213),
        //           child: Image.network(
        //             "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?",
        //             width: double.infinity,
        //           ),
        //         ),
        //         Row(
        //           children: [
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.favorite_rounded,
        //                 color: Colors.red,
        //               ),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.comment_outlined,
        //               ),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.send,
        //               ),
        //             ),
        //           ],
        //         )
        //       ],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           color: const Color.fromARGB(255, 244, 213, 213),
        //           child: Image.network(
        //             "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?",
        //             width: double.infinity,
        //           ),
        //         ),
        //         Row(
        //           children: [
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.favorite_rounded,
        //                 color: Colors.red,
        //               ),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.comment_outlined,
        //               ),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.send,
        //               ),
        //             ),
        //           ],
        //         )
        //       ],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           color: const Color.fromARGB(255, 244, 213, 213),
        //           child: Image.network(
        //             "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?",
        //             width: double.infinity,
        //           ),
        //         ),
        //         Row(
        //           children: [
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.favorite_rounded,
        //                 color: Colors.red,
        //               ),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.comment_outlined,
        //               ),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.send,
        //               ),
        //             ),
        //           ],
        //         )
        //       ],
        //     ),
        //   ],
        // ));
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 244, 213, 213),
                    child: Image.network(
                      "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?",
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            p1 = !p1;
                          });
                        },
                        icon: Icon(
                          p1
                              ? Icons.favorite_rounded
                              : Icons.favorite_outline_outlined,
                          color: p1
                              ? const Color.fromRGBO(244, 67, 54, 1)
                              : Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                        ),
                      ),
                      // SizedBox(
                      //   width: 190,
                      // ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 244, 213, 213),
                    child: Image.network(
                      "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?",
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            p2 = !p2;
                          });
                        },
                        icon: Icon(
                          //color: Colors.red,
                          p2
                              ? Icons.favorite_rounded
                              : Icons.favorite_outline_outlined,
                          color: p2
                              ? const Color.fromRGBO(244, 67, 54, 1)
                              : Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                        ),
                      ),
                      // SizedBox(
                      //   width: 190,
                      // ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 244, 213, 213),
                    child: Image.network(
                      "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?",
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            p3 = !p3;
                          });
                        },
                        icon: Icon(
                          p2
                              ? Icons.favorite_rounded
                              : Icons.favorite_outline_outlined,
                          color: p2
                              ? const Color.fromRGBO(244, 67, 54, 1)
                              : Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                        ),
                      ),
                      // SizedBox(
                      //   width: 190,
                      // ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
