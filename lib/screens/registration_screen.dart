import 'package:flutter/material.dart';
import 'package:flutter_flash_chat/widgets/primary_button.dart';
import 'package:flutter_flash_chat/widgets/primary_text.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            PrimaryText(
              hint: 'Enter your email.',
              onChanged: (str) {},
            ),
            SizedBox(
              height: 8.0,
            ),
            PrimaryText(
              hint: 'Enter your password.',
              onChanged: (str) {},
            ),
            SizedBox(
              height: 24.0,
            ),
            PrimaryButton(
              buttonText: 'Register',
              color: Colors.blueAccent,
              action: () {},
            ),
          ],
        ),
      ),
    );
  }
}
