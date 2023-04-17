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
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
              "${tipoTexto.img}",
            )),
          )),
          Text(
            tipoTexto.tipo ?? '',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
