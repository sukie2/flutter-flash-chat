import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;
  bool isPassword = false;

  // PrimaryText({required this.hint, required this.onChanged} this.isPassword);
  PrimaryText(
      {required String hint,
      required ValueChanged<String> onChanged,
      bool isPassword = false})
      : this.hint = hint,
        this.onChanged = onChanged,
        this.isPassword = isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      obscureText: isPassword,
      onChanged: onChanged,
      style: TextStyle(fontSize: 22.0, color: Colors.lightBlueAccent),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 20.0, color: Color(0xFFbdc6cf)),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
