// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Pratica0304 extends StatefulWidget {
  const Pratica0304({Key? key}) : super(key: key);

  @override
  _Pratica0304State createState() => _Pratica0304State();
}

class _Pratica0304State extends State<Pratica0304> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Column',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pratica 03 - 04'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          height: 800,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'https://pbs.twimg.com/media/FqZ4QFmXsAIcKdY?format=jpg&name=large',
                  height: 250,
                  width: 400,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://picsum.photos/250?image=10',
                      height: 150,
                      width: 100,
                    ),
                    Image.network(
                      'https://picsum.photos/250?image=20',
                      height: 150,
                      width: 100,
                    ),
                    Image.network(
                      'https://picsum.photos/250?image=15',
                      height: 150,
                      width: 100,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  'Botão clicado $_counter vezes',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[900],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
