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
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              texto.texto ?? '',
              style: const TextStyle(
                fontSize: 19,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          VideoWidget(texto.video),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              child: const Icon(
                Icons.close,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    ));
  }
}
