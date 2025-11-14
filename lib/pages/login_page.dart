import 'package:flutter/material.dart';

const Color tealTop = Color(0xFF3FD6C1);
const Color tealBottom = Color(0xFF2DBFB0);

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final radius = 18.0;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [tealTop, tealBottom],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const Spacer(),
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                  size: 100,
                ),
                const SizedBox(height: 18),
                const Text(
                  "APP NAME",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    letterSpacing: 1.4,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                _input(username, "Username", radius),
                const SizedBox(height: 12),
                _input(password, "Password", radius, obscure: true),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/list'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: tealBottom,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _input(
    TextEditingController c,
    String label,
    double radius, {
    bool obscure = false,
  }) {
    return TextField(
      controller: c,
      obscureText: obscure,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
