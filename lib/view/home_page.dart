import 'package:dic_project/providers/tipo_textos_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tipoTextos = Provider.of<TipoTextosProvider>(context).tipo_textos;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicionario Gestual'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: tipoTextos.length,
        itemBuilder: (ctx, index) {
          final tipoTexto = tipoTextos[index];

          return Card(
            child: Text(tipoTexto.tipo ?? ''),
          );
        },
      ),
    );
  }
}
