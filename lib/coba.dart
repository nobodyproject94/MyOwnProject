import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MaestroNesia',
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 23, 21, 44),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: 4,
        children: [
          Text(
            'saldo banyak',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text('Top Up', style: TextStyle(color: Colors.white, fontSize: 20)),
          Text('Explore', style: TextStyle(color: Colors.white, fontSize: 20)),
        ],
      ),
    );
  }
}
