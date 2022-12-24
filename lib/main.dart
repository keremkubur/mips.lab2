import 'package:flutter/material.dart';
import 'clothes_answers.dart';
import 'clothes_questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _iWasTapped() {
    setState(() {
      _qIndex += 1;
    });
    print('I was tapped');
  }

  var questions = [
    {
      'question': "What type of clothes you want?",
      'answer': [
        'T-Shirt',
        'Pants',
        'Hats',
      ]

    },
    {
      'question': "Please select a brand",
      'answer': [
        'H&M',
        'ZARA',
        'Timberland',
      ]
    },
    {
      'question': "Select a material",
      'answer': [
        'Cotton',
        'Polyester',
        'Wool',
      ]
    },
  ];
  var _qIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MIS LAB 2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lab 2"),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_qIndex]['question'].toString()),
            ...(questions[_qIndex]['answer'] as List<String>)
                .map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}
