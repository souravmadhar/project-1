import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back_ios),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("third screen"),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ThirdScreen()));
                },
                child: Text("move to third screen")),
          ],
        ));
  }
}
