import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flash_chat/screens/chat_screen.dart';
import 'package:flutter_flash_chat/widgets/primary_button.dart';
import 'package:flutter_flash_chat/widgets/primary_text.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
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
                  }),
              SizedBox(
                height: 8.0,
              ),
              PrimaryText(
                isPassword: true,
                hint: 'Enter your password.',
                onChanged: (str) {
                  password = str;
                },
              ),
              SizedBox(
                height: 24.0,
              ),
              PrimaryButton(
                buttonText: 'Log in',
                color: Colors.lightBlueAccent,
                action: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    print(email + " " + password);
                    UserCredential userCredential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: email, password: password);
                    print(userCredential.user);
                    Navigator.pushNamed(context, ChatScreen.id);
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      print('Wrong password provided for that user.');
                    }
                  } finally {
                    setState(() {
                      showSpinner = false;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
