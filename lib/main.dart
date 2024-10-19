import 'package:flutter/material.dart';
import 'login.dart'; // Import halaman login
import 'signup.dart'; // Import halaman sign-up

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 17, 135, 155)),
        useMaterial3: true,
      ),
      home: const LoginPage(), // Default halaman login
      routes: {
        '/signup': (context) => const SignUpPage(), // Rute ke halaman sign-up
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
