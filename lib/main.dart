import 'package:flutter/material.dart';
import 'package:lab2/clothes.answer.dart';
import 'package:lab2/clothes.question.dart';

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
      _questionIndex += 1;
    });
    print('I was tapped');
  }

  var questions = [
    {
      'question': "Select brand",
      'answer': [
        'Zara',
        'Bershka',
        'Stradivarius',
      ]
    },
    {
      'question': "Select clothing type",
      'answer': [
        'Jacket',
        'Pants',
        'Skirt',
      ]
    },
    {
      'question': "Select material type",
      'answer': [
        'Cotton',
        'Denim',
        'Leather',
      ]
    },
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shopping"),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question'].toString()),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}