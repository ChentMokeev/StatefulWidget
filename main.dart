import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var cnt = Random();
  Color selectedColor = Colors.red;

  setColor() {
    setState(() {
      // print('pressed');
      selectedColor == Colors.red
          ? selectedColor = Colors.green
          : selectedColor = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo App')),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(50),
            color: selectedColor,
            child: Text(
              '${cnt.nextInt(100)}',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: setColor,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
