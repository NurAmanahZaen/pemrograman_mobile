import 'package:flutter/material.dart';
import 'login.dart'; // Import halaman login
import 'signup.dart'; // Import halaman sign-up
import 'home.dart'; // Import halaman home

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petshop Information System',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 17, 119, 147),
        ),
        useMaterial3: true,
      ),
      home: const LoginPage(), // Halaman login sebagai halaman awal
      routes: {
        '/signup': (context) => const SignUpPage(), // Rute ke halaman sign-up
        '/home': (context) => const HomePage(), // Rute ke halaman home
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
