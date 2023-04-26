import 'package:flutter/material.dart';
import 'package:praticas_flutter/login.dart';
import 'pratica-04.dart';
import 'pratica01.dart';
import 'pratica02.dart';
import 'pratica03-04.dart';
import 'pratica03-03.dart';
import 'pratica03.dart';

import 'pratica05.dart';
import 'pratica06.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Minha Aplicação', initialRoute: '/', routes: {
      '/': (context) => const LoginPage(),
      '/home': (context) => HomePage(),
      '/pratica01': (context) => const Pratica01(),
      '/pratica02': (context) => const Pratica02(),
      '/pratica03': (context) => const Pratica03(),
      '/pratica04': (context) => const Pratica04(),
      '/pratica03-03': (context) => const Pratica0303(),
      '/pratica03-04': (context) => const Pratica0304(),
      '/pratica05': (context) => const Pratica05(),
      '/pratica06': (context) => const Pratica06(),
    });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Página Inicial'),
      ),
      backgroundColor: Colors.lightBlue[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pratica01');
              },
              child: const Text('Pratica 01'),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pratica02');
              },
              child: const Text('Pratica 02'),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pratica03');
              },
              child: const Text('Pratica 03'),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pratica04');
              },
              child: const Text('Pratica 04'),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pratica05');
              },
              child: const Text('Pratica 05'),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pratica06');
              },
              child: const Text('Pratica 06'),
            ),
          ),
        ],
      ),
    );
  }
}
