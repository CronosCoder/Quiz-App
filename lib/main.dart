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
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    void handleClicked() {
      setState(() {
        if (_index < 13) {
          _index = _index + 1;
        }
      });

      print(_index);
    }

    var que = questions[_index]['question'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _index < questions.length - 1
            ? Column(
                children: [
                  Text(que.toString()),
                  ...(questions[_index]['answer'] as List<String>).map((ans) {
                    return RaisedButton(
                      onPressed: handleClicked,
                      child: Text(ans.toString()),
                    );
                  }),
                ],
              )
            : const Center(
                child: Text('You have done it'),
              ),
      ),
    );
  }
}
