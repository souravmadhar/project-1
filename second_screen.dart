import 'package:flutter/material.dart';
import 'package:flutter_application_3/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("second screen"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("back")),
          OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => ThirdScreen()));
              },
              child: Text("move to third screen"))
        ],
      ),
    );
  }
}
