import 'package:dic_project/models/tipo_texto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListTexto extends StatelessWidget {
  final TipoTexto tipoTexto;

  const ListTexto({super.key, required this.tipoTexto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${tipoTexto.tipo}")),
      body: const Center(child: Text('hello')),
    );
  }
}
