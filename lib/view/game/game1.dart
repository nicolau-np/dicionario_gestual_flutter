import 'package:dic_project/view/games_page.dart';
import 'package:flutter/material.dart';

class GameOne extends StatefulWidget {
  const GameOne({super.key});

  @override
  State<GameOne> createState() => _GameOneState();
}

class _GameOneState extends State<GameOne> {
  bool a = false;
  bool b = true; //verdadeira
  bool c = false;

  bool clicou = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Center(
                child: Image.asset(
                  'assets/images/q1.gif',
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    clicou = true;
                  });
                  showAlert(text: 'Você errou', point: 0, type: 'error');
                },
                child: Container(
                  height: 65.0,
                  width: 500,
                  padding: const EdgeInsets.all(20.0),
                  color: clicou ? Colors.red : Colors.purple,
                  child: const Text(
                    'A. Comer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    clicou = true;
                  });
                },
                child: Container(
                  height: 65.0,
                  width: 500,
                  padding: const EdgeInsets.all(20.0),
                  color: clicou ? Colors.green : Colors.purple,
                  child: const Text(
                    'B. Letra R',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    clicou = true;
                  });
                },
                child: Container(
                  height: 65.0,
                  width: 500,
                  padding: const EdgeInsets.all(20.0),
                  color: clicou ? Colors.red : Colors.purple,
                  child: const Text(
                    'C. Estou com fome',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const GamePage(),
                              ),
                            );
                          },
                          child: const Text('Sim'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancelar'),
                        ),
                      ],
                      title: const Text('Abandonar Jogo'),
                      contentPadding: const EdgeInsets.all(20.0),
                      content: const Text('Deseja Terminar a Jogo?'),
                    ),
                  );
                },
                child: const Text('Terminar Jogo'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAlert(
      {required String text, required int point, required String type}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GamePage(),
                ),
              );
            },
            child: const Text('Terminar'),
          ),
        ],
        title: const Text('Informação'),
        contentPadding: const EdgeInsets.all(20.0),
        content: Column(
          children: [
            Center(
              child: type == 'wrong'
                  ? Image.asset(
                      'assets/images/wrong.png',
                      height: 50,
                      width: 50,
                    )
                  : Image.asset(
                      'assets/images/win.png',
                      height: 50,
                      width: 50,
                    ),
            ),
            const SizedBox(height: 15.0),
            Center(
              child: type == 'wrong'
                  ? const Text(
                      'Você Errou !!',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : const Text(
                      'Você Acertou !!',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
            const SizedBox(height: 15.0),
            Center(
              child: Text("$point pt"),
            ),
          ],
        ),
      ),
    );
  }
}
