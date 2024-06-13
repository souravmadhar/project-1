import 'package:flutter/material.dart';

import 'second_screen.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back_ios),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(" first screen "),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Text("navigation to second screen")),
          ],
        ));
  }
}
