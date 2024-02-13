import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hello Core2Web"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Image.network(
                "https://plus.unsplash.com/premium_photo-1673002094239-6e2dc1e1e9d5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fG5hdHVyZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D",
                width: 150,
                height: 300,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1616285798798-945ebab6583f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fG5hdHVyZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D",
                width: 150,
                height: 300,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.network(
                "https://plus.unsplash.com/premium_photo-1664461663120-b39152ba92ae?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c3VucmlzZXxlbnwwfHwwfHx8MA%3D%3D",
                width: 150,
                height: 300,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.network(
                "https://media.istockphoto.com/id/157373207/photo/balanced-stones-on-a-pebble-beach-during-sunset.jpg?s=2048x2048&w=is&k=20&c=OX3HgrIrYiVoiaqBkxpCh8nPcv7MgoKFbHwnSrwMIeQ=",
                width: 150,
                height: 300,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 12,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1613706903647-77e255eff994?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fG5hdHVyZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D",
                width: 150,
                height: 300,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
