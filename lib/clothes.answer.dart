import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget{
  String answerText;
  VoidCallback tapped;
  ClothesAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(answerText),
      onPressed: tapped,
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
        onPrimary: Colors.red,
      ),
    );
  }

}