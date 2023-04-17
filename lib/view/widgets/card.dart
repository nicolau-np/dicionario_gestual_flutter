import 'package:dic_project/models/tipo_texto.dart';
import 'package:flutter/material.dart';

class CardType extends StatelessWidget {
  final TipoTexto tipoTexto;

  const CardType({super.key, required this.tipoTexto});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "${tipoTexto.img}",
            height: 100,
            width: 100,
          ),
          Text(
            tipoTexto.tipo ?? '',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
