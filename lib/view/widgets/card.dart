import 'package:dic_project/view/home/list_texto.dart';
import 'package:flutter/material.dart';

import '../../models/tipo_texto.dart';

class CardType extends StatelessWidget {
  final TipoTexto tipoTexto;

  const CardType({super.key, required this.tipoTexto});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ListTexto(tipoTexto: tipoTexto)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              tipoTexto.img ?? 'assets/images/loading.gif',
              height: 80,
              width: 80,
            ),
            Text(
              tipoTexto.tipo ?? '',
              style: const TextStyle(
                color: Colors.purple,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
