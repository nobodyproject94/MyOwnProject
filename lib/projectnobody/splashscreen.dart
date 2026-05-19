import 'package:flutter/material.dart';
import 'package:flutter_application_1/extension/navigator.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/logo maestronesia.png')),
          ElevatedButton(
            onPressed: () {
              context.pushNamed("/login");
            },
            child: Text('ke login page'),
          ),
        ],
      ),
    );
  }
}
