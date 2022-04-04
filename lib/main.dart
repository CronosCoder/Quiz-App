// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './storagehub.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    void handleClicked() {
      setState(() {
        index = index + 1;
        print(index);
      });
      print(index);
    }

    var que = questions[index]['question'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text(que.toString()),
            FlatButton(
              onPressed: handleClicked,
              child: Text('Max'),
            ),
            FlatButton(
              onPressed: handleClicked,
              child: Text('David'),
            ),
            FlatButton(
              onPressed: handleClicked,
              child: Text('Smith'),
            ),
            FlatButton(
              onPressed: handleClicked,
              child: Text('Rock'),
            ),
          ],
        ),
      ),
    );
  }
}
