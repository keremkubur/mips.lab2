import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {
  String _qContent;
  ClothesQuestion(this._qContent);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        _qContent,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),
      ),
    );
  }
}