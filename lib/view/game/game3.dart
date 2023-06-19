import 'package:dic_project/main.dart';
import 'package:dic_project/view/home_page.dart';
import 'package:dic_project/view/games_page.dart';
import 'package:flutter/material.dart';

class GameTree extends StatefulWidget {
  const GameTree({super.key});

  @override
  State<GameTree> createState() => _GameTreeState();
}

class _GameTreeState extends State<GameTree> {
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
                  'assets/images/q3.gif',
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
                  showAlert(point: 20, type: 'wrong');
                },
                child: Container(
                  height: 65.0,
                  width: 500,
                  padding: const EdgeInsets.all(20.0),
                  color: clicou ? Colors.red : Colors.purple,
                  child: const Text(
                    'A. Estou chateado',
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
                  showAlert(point: 30, type: 'win');
                },
                child: Container(
                  height: 65.0,
                  width: 500,
                  padding: const EdgeInsets.all(20.0),
                  color: clicou ? Colors.green : Colors.purple,
                  child: const Text(
                    'B. Está Combinado',
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
                  showAlert(point: 20, type: 'wrong');
                },
                child: Container(
                  height: 65.0,
                  width: 500,
                  padding: const EdgeInsets.all(20.0),
                  color: clicou ? Colors.red : Colors.purple,
                  child: const Text(
                    'C. Estou com saudades',
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
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyApp(),
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
                child: const Text('Abandonar Jogo'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAlert({required int point, required String type}) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          type == 'wrong'
              ? TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ),
                    );
                  },
                  child: const Text('Terminar'),
                )
              : TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ),
                    );
                  },
                  child: const Text('Página Principal'),
                ),
        ],
        title: const Text('Informação'),
        contentPadding: const EdgeInsets.all(20.0),
        content: SizedBox(
          height: 200,
          child: Column(
    
            children: [
              Center(
                child: type == 'wrong'
                    ? Image.asset(
                        'assets/images/wrong.png',
                        height: 50,
                        width: 50,
                      )
                    : Image.asset(
                        'assets/images/trophy.gif',
                        height: 70,
                        width: 70,
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
                        'Estás de Parabéns !!',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
              const SizedBox(height: 15.0),
              Center(
                child: Text("$point pt",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
