// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math';

class Pratica03 extends StatefulWidget {
  const Pratica03({Key? key}) : super(key: key);

  @override
  _Pratica03State createState() => _Pratica03State();
}

class _Pratica03State extends State<Pratica03> {
  final DateTime _dateTime = DateTime.now();

  final List<Color> _randomColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
  ];

  Color _getRandomColor() {
    Random random = Random();
    return _randomColors[random.nextInt(_randomColors.length)];
  }

  RichText _buildRichText() {
    List<String> words = ['Olá', ',', 'Lucas', 'Coacci'];
    List<TextSpan> textSpans = [];
    for (int i = 0; i < words.length; i++) {
      Color textColor = _getRandomColor();
      Color backgroundColor = _getRandomColor();

      while (textColor == backgroundColor) {
        backgroundColor = _getRandomColor();
      }

      textSpans.add(TextSpan(
        text: '${words[i]} ',
        style: TextStyle(
          color: textColor,
          backgroundColor: backgroundColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ));
    }

    return RichText(
      text: TextSpan(
        children: textSpans,
      ),
    );
  }

  String _getWeekdayName() {
    switch (_dateTime.weekday) {
      case 1:
        return 'Segunda-feira';
      case 2:
        return 'Terça-feira';
      case 3:
        return 'Quarta-feira';
      case 4:
        return 'Quinta-feira';
      case 5:
        return 'Sexta-feira';
      case 6:
        return 'Sábado';
      case 7:
        return 'Domingo';
      default:
        return '';
    }
  }

  String _getGreeting() {
    int hour = _dateTime.hour;
    if (hour >= 6 && hour < 12) {
      return 'Bom dia';
    } else if (hour >= 12 && hour < 18) {
      return 'Boa tarde';
    } else {
      return 'Boa noite';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pratica 03'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildRichText(),
            const SizedBox(height: 20),
            Text(
              'Hoje é ${_getWeekdayName()}',
              style: TextStyle(
                color: _getRandomColor(),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              _getGreeting(),
              style: TextStyle(
                color: _getRandomColor(),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 30),
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pratica03-03');
              },
              child: const Text('Abrir Prática 03-03'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pratica03-04');
              },
              child: const Text('Abrir Prática 03-04'),
            ),
          ],
        ),
      ),
    );
  }
}
