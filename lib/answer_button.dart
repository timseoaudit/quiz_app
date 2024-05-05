import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.onTab, this.answerText, {super.key});

  final String answerText;
  final void Function() onTab;


  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        onPressed: onTab,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 96, 6, 109), 
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        ),
        child: Text(answerText,
        textAlign: TextAlign.center),
      ),
    );
  }
}
