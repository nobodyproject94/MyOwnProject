import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/extension/navigator.dart';
import 'package:flutter_application_1/navigsi.dart';

class Textrich extends StatelessWidget {
  const Textrich({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('TextRich', style: TextStyle(color: Colors.yellowAccent)),
      ),
      body: Column(
        children: [
          Text.rich(
            TextSpan(
              text: 'already have an account?',
              style: TextStyle(fontSize: 30),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => context.push(Navigasi()),
                  text: 'sign up here',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 30,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
