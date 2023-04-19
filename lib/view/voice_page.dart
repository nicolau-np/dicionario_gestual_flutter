import 'package:dic_project/view/widgets/card.dart';
import 'package:flutter/material.dart';

class VoicePage extends StatelessWidget {
  const VoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voz'),
      ),
      body: const Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon(
          Icons.mic_none,
          size: 36,
        ),
      ),
    );
  }
}
