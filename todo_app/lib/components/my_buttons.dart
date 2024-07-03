import 'package:flutter/material.dart';
class MyButtons extends StatelessWidget {

  String buttonText;
  VoidCallback onPressed;
  MyButtons({super.key,required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue[100],
      onPressed: onPressed,
      child: Text(buttonText),
      ) ;
  }
}