import 'package:flutter/material.dart';
import 'package:flutter_application_1/extension/navigator.dart';
import 'package:flutter_application_1/pop.dart';

class Navigasi extends StatelessWidget {
  const Navigasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('navigator', style: TextStyle(color: Colors.yellowAccent)),
        // leading: Icon(Icons.abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => FlutterWidget4()),
              // );
              context.push(Pop());
            },
            child: Text('Log In'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => FlutterWidget4()),
              // );
              context.pushReplacement(Pop());
            },
            child: Text('Navigasi PushReplecment'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => FlutterWidget4()),
              // );
              context.pushAndRemoveAll(Pop());
            },
            child: Text('push removeAll'),
          ),
        ],
      ),
    );
  }
}
