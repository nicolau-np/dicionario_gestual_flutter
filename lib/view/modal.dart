import 'package:dic_project/models/texto.dart';
import 'package:dic_project/view/widgets/video.dart';
import 'package:flutter/material.dart';

class ModalSheet extends StatelessWidget {
  final Texto texto;
  const ModalSheet({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const VideoWidget(),
          Center(
            child: ElevatedButton(
              child: const Text('Fechar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    ));
  }
}
