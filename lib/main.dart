import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'package:pokedex/firebase_options.dart';
import 'package:pokedex/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyB0sVJw89wnQoAR5DR0WvNf1pwUwpTWNAw",
        authDomain: "pokedex-app-5fede.firebaseapp.com",
        projectId: "pokedex-app-5fede",
        storageBucket: "pokedex-app-5fede.firebasestorage.app",
        messagingSenderId: "422491550570",
        appId: "1:422491550570:web:1b2d2e4a0de81bcc68ab13"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
