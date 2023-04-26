import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pratica01 extends StatelessWidget {
  const Pratica01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Aplicação',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pratica 01'),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const Center(
          child: Text(
            'Minha mensagem formatada',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
