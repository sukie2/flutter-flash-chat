import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Color color;
  final String buttonText;
  final VoidCallback action;

  PrimaryButton(
      {required this.buttonText, required this.color, required this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: action,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
          ),
        ),
      ),
    );
  }
}
