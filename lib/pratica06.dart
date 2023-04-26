// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Pratica06 extends StatelessWidget {
  const Pratica06({Key? key}) : super(key: key);

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

class SubPage1 extends StatelessWidget {
  const SubPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagens'),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.jpg',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SubPageImage(
                        title: 'Imagem 1',
                        description: 'Esta é a primeira imagem',
                        image: 'assets/images/logo.jpg',
                      ),
                    ),
                  );
                },
                child: const Text('Ver detalhes'),
              ),
              const SizedBox(height: 40),
              Image.asset(
                'assets/images/logo.jpg',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SubPageImage(
                        title: 'Imagem 2',
                        description: 'Esta é a segunda imagem',
                        image: 'assets/images/logo.jpg',
                      ),
                    ),
                  );
                },
                child: const Text('Ver detalhes'),
              ),
              const SizedBox(height: 40),
              Image.asset(
                'assets/images/logo.jpg',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SubPageImage(
                        title: 'Imagem 3',
                        description: 'Esta é a terceira imagem',
                        image: 'assets/images/logo.jpg',
                      ),
                    ),
                  );
                },
                child: const Text('Ver detalhes'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ação do botão flutuante
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SubPageImage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const SubPageImage(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(description),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

class SubPage2 extends StatefulWidget {
  const SubPage2({Key? key}) : super(key: key);

  @override
  _SubPage2State createState() => _SubPage2State();
}

class _SubPage2State extends State<SubPage2> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const SubTela(title: 'Subtela 1'),
    const SubTela(title: 'Subtela 2'),
    const SubTela(title: 'Subtela 3'),
    const SubTela(title: 'Subtela 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Subtelas'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            if (index == 0 && _currentIndex > 0) {
              _currentIndex--;
            } else if (index == 1 && _currentIndex < _screens.length - 1) {
              _currentIndex++;
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Anterior',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Próximo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crop_square),
            label: '',
          ),
        ],
      ),
    );
  }
}

class SubTela extends StatelessWidget {
  final String title;

  const SubTela({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SubPage3 extends StatelessWidget {
  const SubPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Exercicio 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://picsum.photos/200',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://picsum.photos/200',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SubPage4 extends StatelessWidget {
  const SubPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercicio 4'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image:
                      NetworkImage('https://picsum.photos/200/300?grayscale'),
                  fit: BoxFit.cover,
                ),
              ),
              width: 150,
              height: 200,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: NetworkImage('https://picsum.photos/200/300?blur'),
                  fit: BoxFit.cover,
                ),
              ),
              width: 150,
              height: 200,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
