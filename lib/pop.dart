import 'package:flutter/material.dart';
import 'package:flutter_application_1/extension/navigator.dart';

class Pop extends StatefulWidget {
  const Pop({super.key});

  @override
  State<Pop> createState() => _PopState();
}

class _PopState extends State<Pop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('pop', style: TextStyle(color: Colors.yellowAccent)),
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
              context.pop();
            },
            child: Text('Sign out'),
          ),
        ],
      ),
    );
  }
}
