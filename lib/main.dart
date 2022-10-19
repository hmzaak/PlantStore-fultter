import 'package:flutter/material.dart';
import 'package:plantstore/ui/screens/homepage/home_page.dart';
import 'package:plantstore/ui/screens/login/login_page.dart';
import 'package:plantstore/ui/screens/signup/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        '/login-page': (context) => const LoginPage(),
        '/signup-page': (context) => const SignUpPage(),
        '/home-page': (context) => const HomePage(),
      },
    );
  }
}
