import 'package:flutter/material.dart';

class FlutterWidget4 extends StatefulWidget {
  const FlutterWidget4({super.key});

  @override
  State<FlutterWidget4> createState() => _FlutterWidget4State();
}

class _FlutterWidget4State extends State<FlutterWidget4> {
  int nilaiCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('practice stf 1')),
    body: Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$nilaiCounter', style: TextStyle(fontSize: 40),)
      ],
    ),
    );
  }
}
