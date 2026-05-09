import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaestroNesia'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text('Hola!')),
    );
  }
}
