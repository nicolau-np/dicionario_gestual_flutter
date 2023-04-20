import 'package:dic_project/providers/textos_providers.dart';
import 'package:dic_project/view/modal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/tipo_texto.dart';

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
    getTextos();
  }

  Future<void> getTextos() async {
    await Provider.of<TextosProvider>(context, listen: false)
        .getTextoCategory(widget.tipoTexto.id ?? 1);
  }

  @override
  Widget build(BuildContext context) {
    final textos = Provider.of<TextosProvider>(context).textos;
    return Scaffold(
      appBar: AppBar(title: Text("${widget.tipoTexto.tipo}")),
      body: ListView.builder(
        itemCount: textos.length,
        itemBuilder: (context, index) {
          final texto = textos[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber[100],
              child: ListTile(
                title: Text(texto.texto ?? ''),
                leading: SizedBox(
                  height: 58,
                  width: 58,
                  child: Image.network(
                    'https://scontent.flad4-1.fna.fbcdn.net/v/t39.30808-6/336922890_924909615385741_7275546257988471995_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeF01MBNA1bf0ty588XVezm2demCvspW6lt16YK-ylbqWzk5m68ohD1LH6YrEKeqbSjmz6QV61E7xbLwOJQZ9dZ8&_nc_ohc=9Wcj6PEkAX8AX8wBC9B&_nc_zt=23&_nc_ht=scontent.flad4-1.fna&oh=00_AfBsJEi7MRE1kw_LmY_CKMFiTt49G3XxjZ1zcMTIdVjY5A&oe=6442071C',
                  ),
                ),
                subtitle: const Text('hello'),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => showModalBottomSheet(
                          isDismissible: false,
                          enableDrag: false,
                          //isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          context: context,
                          builder: (context) => ModalSheet(texto: texto),
                        ),
                        icon: const Icon(Icons.edit),
                        color: Colors.orange,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget builderSheet() => Column(
        children: const [
          Text('hello world'),
        ],
      );
}
