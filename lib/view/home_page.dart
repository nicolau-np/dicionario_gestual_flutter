import 'package:dic_project/providers/tipo_textos_providers.dart';
import 'package:dic_project/view/widgets/card.dart';
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tipoTextos = Provider.of<TipoTextosProvider>(context).tipo_textos;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicionário Gestual'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          if (tipoTextos.isEmpty)
            const Center(
              child: CircularProgressIndicator(),
            )
          else
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: tipoTextos.length,
                itemBuilder: (ctx, index) {
                  final tipoTexto = tipoTextos[index];

                  return Card(
                    child: CardType(tipoTexto: tipoTexto),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
