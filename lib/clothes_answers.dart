import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget{
  String answer;
  VoidCallback tapped;
  ClothesAnswer(this.tapped, this.answer);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(answer),
      onPressed: tapped,
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
        onPrimary: Colors.red,
      ),
    );
  }

}