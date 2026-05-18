import 'package:flutter/material.dart';

class HomeScreenMaestronesia extends StatelessWidget {
  const HomeScreenMaestronesia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A192F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF112240),
        title: const Text(
          'Find an Expert',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Halaman Utama Client (Cari Suhu)',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC5A059),
              ),
              onPressed: () {
                // Pas ditap, pindah ke Dashboard Expert
                Navigator.pushNamed(context, '/expert');
              },
              child: const Text(
                'SWITCH TO EXPERT MODE',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
