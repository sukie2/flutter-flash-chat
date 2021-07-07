import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flash_chat/widgets/primary_button.dart';
import 'package:flutter_flash_chat/widgets/primary_text.dart';

import 'chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email = "";
  String password = "";
  final _auth = FirebaseAuth.instance;

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
              onChanged: (str) {
                email = str;
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            PrimaryText(
              hint: 'Enter your password.',
              onChanged: (str) {
                password = password;
              },
              isPassword: true,
            ),
            SizedBox(
              height: 24.0,
            ),
            PrimaryButton(
              buttonText: 'Register',
              color: Colors.blueAccent,
              action: () async {
                final newUser = await _auth.createUserWithEmailAndPassword(
                    email: email, password: password);
                Navigator.pushNamed(context, ChatScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
