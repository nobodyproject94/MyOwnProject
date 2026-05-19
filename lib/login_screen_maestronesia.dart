import 'package:flutter/material.dart';

class LoginScreenMaestronesia extends StatefulWidget {
  const LoginScreenMaestronesia({super.key});

  @override
  State<LoginScreenMaestronesia> createState() => _Tugas6FlutterState();
}

class _Tugas6FlutterState extends State<LoginScreenMaestronesia> {
  // ── 1. Controller & FormKey ──────────────────────
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true; // untuk show/hide password

  @override
  void dispose() {
    // wajib dispose biar gak memory leak
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // ── 2. Fungsi submit ─────────────────────────────
  void _submit() {
    if (_formKey.currentState!.validate()) {
      // kalau semua valid, lanjut proses
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Account created!')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B141C),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ── HEADER ────────────────────────────
              const Text(
                'MAESTRONESIA',
                style: TextStyle(
                  color: Color(0xFFF5C97A), // gold
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'SOLUSI, AKURASI, KEAHLIAN',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 12,
                  letterSpacing: 4,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 32),

              // ── CARD FORM ─────────────────────────
              Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: const Color(0xFF1C2630), // dark card
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Form(
                  key: _formKey, // pasang formKey di sini
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // judul card
                      const Text(
                        'Come Join Us',
                        style: TextStyle(
                          color: Color(0xFFF5C97A),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Create your account to access world-class expertise.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white60, fontSize: 14),
                      ),
                      const SizedBox(height: 28),

                      // ── EMAIL ──────────────────────
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.white),
                        decoration: _inputDecor('EMAIL ADDRESS'),
                        // validator email
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is equired';
                          }
                          // cek format email pakai regex sederhana
                          if (!RegExp(
                            r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$',
                          ).hasMatch(value)) {
                            return 'Invalid email format';
                          }
                          return null; // null = valid
                        },
                      ),
                      const SizedBox(height: 16),

                      // ── PASSWORD ───────────────────
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _obscurePassword, // show/hide
                        style: const TextStyle(color: Colors.white),
                        decoration: _inputDecor('PASSWORD').copyWith(
                          // tombol mata di ujung kanan
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white38,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                        // validator password
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is reqired';
                          }
                          if (value.length < 8) {
                            return 'Password must contain at least 8 character';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 28),

                      // ── TOMBOL CREATE ACCOUNT ──────
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton.icon(
                          onPressed: _submit,
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          label: const Text(
                            'CREATE ACCOUNT',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF5C97A), // gold
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // ── OR CONTINUE WITH ───────────
                      const Text(
                        'OR CONTINUE WITH',
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 12,
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // ── GOOGLE & LINKEDIN ──────────
                      Row(
                        children: [
                          Expanded(
                            child: _socialButton(
                              icon: Icons.login,
                              label: 'Google',
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _socialButton(
                              icon: Icons.work_outline,
                              label: 'LinkedIn',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // ── LINK LOGIN ─────────────────
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account? ',
                            style: TextStyle(color: Colors.white60),
                          ),
                          GestureDetector(
                            onTap: () {
                              // navigasi ke halaman login
                            },
                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                color: Color(0xFFF5C97A),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ── Helper: style TextField supaya DRY ────────────
  InputDecoration _inputDecor(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(
        color: Colors.white38,
        letterSpacing: 1.5,
        fontSize: 13,
      ),
      filled: true,
      fillColor: const Color(0xFF2A3540), // warna kotak input
      border: OutlineInputBorder(
        borderSide: BorderSide.none, // hilangkan border default
        borderRadius: BorderRadius.circular(14),
      ),
      // border saat ada error — otomatis merah
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.redAccent),
        borderRadius: BorderRadius.circular(14),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.redAccent, width: 2),
        borderRadius: BorderRadius.circular(14),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
    );
  }

  // ── Helper: tombol social login ───────────────────
  Widget _socialButton({required IconData icon, required String label}) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: Colors.white60, size: 18),
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.white60,
          letterSpacing: 1.5,
          fontSize: 12,
        ),
      ),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        side: const BorderSide(color: Colors.white24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
