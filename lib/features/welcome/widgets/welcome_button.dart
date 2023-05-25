import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final BorderSide borderSide;
  const WelcomeButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.backgroundColor,
      required this.foregroundColor,
      required this.borderSide});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll<Color>(foregroundColor),
          backgroundColor: MaterialStatePropertyAll<Color>(backgroundColor),
          side: MaterialStatePropertyAll<BorderSide>(borderSide),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
        child: Text(text, style: const TextStyle(fontSize: 19)));
  }
}
