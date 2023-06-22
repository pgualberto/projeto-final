import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Tela_login.dart';
import 'boasvindas.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(
      child: MeuApp(),
    ),
  );
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Controller',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: WelcomePage(), // Defina a tela de boas-vindas como a tela inicial
    );
  }
}
