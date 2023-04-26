// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Pratica02 extends StatefulWidget {
  const Pratica02({super.key});

  @override
  _Pratica02State createState() => _Pratica02State();
}

class _Pratica02State extends State<Pratica02> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pratica 02',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pratica 02'),
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.lightBlue[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Meu nome é',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Lucas Coacci',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Image.network(
                'https://i.pinimg.com/originals/86/a8/0c/86a80cb2c073a1005a6935e047824c3e.gif',
              ),
              const SizedBox(height: 30),
              Text(
                'Botão clicado $_counter vezes',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          tooltip: 'Botão para adicionar',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
