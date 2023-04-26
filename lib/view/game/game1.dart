import 'package:flutter/material.dart';

class GameOne extends StatefulWidget {
  const GameOne({super.key});

  @override
  State<GameOne> createState() => _GameOneState();
}

class _GameOneState extends State<GameOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Verdadeiro ou Falso',
        ),
      ),
      body: const Center(
        child: Text('heloo'),
      ),
    );
  }
}
