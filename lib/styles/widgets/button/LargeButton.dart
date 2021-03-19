import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final void Function() onPressed;

  LargeButton(
      {required this.text,
      required this.backgroundColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
