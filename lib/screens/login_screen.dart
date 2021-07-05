import 'package:flutter/material.dart';
import 'package:flutter_flash_chat/widgets/primary_text.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            PrimaryText(hint: 'Enter your email.', onChanged: (str) {}),
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
            // PrimaryButton(
            //   buttonText: 'Log in',
            //   color: Colors.lightBlueAccent,
            //   action: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
