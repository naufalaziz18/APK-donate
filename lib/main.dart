import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/list_page.dart';
import 'pages/donate_page.dart';

void main() {
  runApp(const CharityApp());
}

class CharityApp extends StatelessWidget {
  const CharityApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charity UI',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => const LoginPage(),
        '/list': (_) => const ListPage(),
        '/donate': (_) => const DonatePage(),
      },
      initialRoute: '/',
    );
  }
}
