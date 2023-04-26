// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Pratica05 extends StatelessWidget {
  const Pratica05({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prática 04')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SubPage1()),
                );
              },
              child: const Text('Exercicio 1'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SubPage2()),
                );
              },
              child: const Text('Exercicio 2'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SubPage3()),
                );
              },
              child: const Text('Exercicio 3'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SubPage4()),
                );
              },
              child: const Text('Exercicio 4'),
            ),
          ],
        ),
      ),
    );
  }
}

class SubPage1 extends StatefulWidget {
  const SubPage1({super.key});

  @override
  _SubPage1State createState() => _SubPage1State();
}

class _SubPage1State extends State<SubPage1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercicio 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Botão clicado $_counter vezes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber[900],
              ),
            ),
            Text(
              _counter % 2 == 0 ? 'O número é par' : 'O número é ímpar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber[900],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Clique aqui'),
            ),
          ],
        ),
      ),
    );
  }
}

class SubPage2 extends StatefulWidget {
  const SubPage2({super.key});

  @override
  _SubPage2State createState() => _SubPage2State();
}

class _SubPage2State extends State<SubPage2> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  double result = 0;

  void _add() {
    setState(() {
      result =
          double.parse(num1Controller.text) + double.parse(num2Controller.text);
    });
  }

  void _subtract() {
    setState(() {
      result =
          double.parse(num1Controller.text) - double.parse(num2Controller.text);
    });
  }

  void _multiply() {
    setState(() {
      result =
          double.parse(num1Controller.text) * double.parse(num2Controller.text);
    });
  }

  void _divide() {
    setState(() {
      result =
          double.parse(num1Controller.text) / double.parse(num2Controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num1Controller,
                decoration: const InputDecoration(hintText: 'Número 1'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num2Controller,
                decoration: const InputDecoration(hintText: 'Número 2'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Resultado: $result',
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _add,
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: _subtract,
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: _multiply,
                  child: const Text('x'),
                ),
                ElevatedButton(
                  onPressed: _divide,
                  child: const Text('/'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SubPage3 extends StatefulWidget {
  const SubPage3({super.key});

  @override
  _SubPage3State createState() => _SubPage3State();
}

class _SubPage3State extends State<SubPage3> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double imc = 0;
  String classification = '';

  void _calculateIMC() {
    double weight = double.parse(weightController.text);
    double height =
        double.parse(heightController.text) / 100; // Converter para metros
    double result = weight / (height * height);
    setState(() {
      imc = result;
      if (result < 16) {
        classification = 'Magreza grave';
      } else if (result < 17) {
        classification = 'Magreza moderada';
      } else if (result < 18.5) {
        classification = 'Magreza leve';
      } else if (result < 25) {
        classification = 'Saudável';
      } else if (result < 30) {
        classification = 'Sobrepeso';
      } else if (result < 35) {
        classification = 'Obesidade grau I';
      } else if (result < 40) {
        classification = 'Obesidade grau II (severa)';
      } else {
        classification = 'Obesidade grau III (mórbida)';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: weightController,
                decoration: const InputDecoration(hintText: 'Peso (kg)'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: heightController,
                decoration: const InputDecoration(hintText: 'Altura (cm)'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'IMC: ${imc.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Classificação: $classification',
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
            ElevatedButton(
              onPressed: _calculateIMC,
              child: const Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}

class SubPage4 extends StatefulWidget {
  const SubPage4({super.key});

  @override
  _SubPage4State createState() => _SubPage4State();
}

class _SubPage4State extends State<SubPage4> {
  TextEditingController lengthController = TextEditingController();
  TextEditingController widthController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double volume = 0;

  void _calculateVolume() {
    double length = double.parse(lengthController.text);
    double width = double.parse(widthController.text);
    double height = double.parse(heightController.text);
    double result = length * width * height;
    setState(() {
      volume = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de Volume'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: lengthController,
                decoration: const InputDecoration(hintText: 'Comprimento'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: widthController,
                decoration: const InputDecoration(hintText: 'Largura'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: heightController,
                decoration: const InputDecoration(hintText: 'Altura'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Volume: ${volume.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
            ElevatedButton(
              onPressed: _calculateVolume,
              child: const Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
