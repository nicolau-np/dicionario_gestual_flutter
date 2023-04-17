import 'package:dic_project/models/tipo_texto.dart';
import 'package:dic_project/providers/textos_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListTexto extends StatefulWidget {
  final TipoTexto tipoTexto;

  const ListTexto({super.key, required this.tipoTexto});

  @override
  State<ListTexto> createState() => _ListTextoState();
}

class _ListTextoState extends State<ListTexto> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final textos = Provider.of<TextosProvider>(context, listen: false)
        .getTextoCategory(widget.tipoTexto.id ?? 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.tipoTexto.tipo}")),
      body: const Center(child: Text('hello')),
    );
  }
}
