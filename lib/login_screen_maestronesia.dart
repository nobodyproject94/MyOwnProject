import 'package:flutter/material.dart';

class LoginScreenMaestronesia extends StatelessWidget {
  const LoginScreenMaestronesia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A192F), // Navy Maestro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'MAESTRONESIA',
              style: TextStyle(
                color: Color(0xFFC5A059),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC5A059),
              ), // Gold
              onPressed: () {
                // Pas ditap, langsung loncat ke halaman Home Client
                Navigator.pushNamed(context, '/home');
              },
              child: const Text(
                'LOGIN AS CLIENT',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
