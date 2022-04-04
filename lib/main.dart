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
    }

    // var que = questions[_index]['question'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Quiz App',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: _index < questions.length
            ? Column(
                children: [
                  Text(
                    questions[_index]['question'].toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  ...(questions[_index]['answer'] as List<String>).map((ans) {
                    return Container(
                      margin: const EdgeInsets.all(2),
                      width: double.infinity,
                      child: RaisedButton(
                        color: const Color.fromARGB(255, 224, 66, 26),
                        onPressed: handleClicked,
                        child: Text(
                          ans.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
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
