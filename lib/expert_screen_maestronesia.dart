import 'package:flutter/material.dart';

class ExpertScreenMaestronesia extends StatelessWidget {
  const ExpertScreenMaestronesia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A192F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF112240),
        title: const Text(
          'Expert Dashboard',
          style: TextStyle(color: Color(0xFFC5A059)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Halaman Dashboard Expert (Fitur Cuan)',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                // Pas ditap, mundur/kembali ke halaman sebelumnya
                Navigator.pop(context);
              },
              child: const Text(
                'BACK TO CLIENT',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
