import 'package:flutter/material.dart';

class Pratica0303 extends StatelessWidget {
  const Pratica0303({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Column',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pratica 03 - 03'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  'https://picsum.photos/250?image=15',
                  height: 150,
                  width: 100,
                ),
                Image.network(
                  'https://picsum.photos/250?image=10',
                  height: 150,
                  width: 100,
                ),
                const SizedBox(height: 20),
                Text(
                  'Google Flutter',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent[700],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
