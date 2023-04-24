import 'package:dic_project/providers/textos_providers.dart';
import 'package:dic_project/view/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
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
    final FlutterTts flutterTts = FlutterTts();

    Future _speech(String text) async {
      await flutterTts.setLanguage("pt-PT");
      await flutterTts.setPitch(2);
      await flutterTts.speak(text);
    }

    // This function is called whenever the text field changes
    void _runFilter(String enteredKeyword) {
      if (enteredKeyword.isEmpty) {
        print('vazio');
      } else {
        
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text("${widget.tipoTexto.tipo}")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                labelText: 'Pesquisar...',
                suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: textos.length,
                itemBuilder: (context, index) {
                  final texto = textos[index];
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      color: Colors.purple[200],
                      child: ListTile(
                        title: Text(
                          texto.texto ?? '',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: const SizedBox(
                          height: 58,
                          width: 58,
                          child: Icon(Icons.subject),
                        ),
                        subtitle: const Text(
                          '...',
                          style: TextStyle(color: Colors.white),
                        ),
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
                                  builder: (context) =>
                                      ModalSheet(texto: texto),
                                ),
                                icon: const Icon(Icons.smart_display),
                                color: Colors.purple,
                              ),
                              IconButton(
                                onPressed: () => _speech(texto.texto ?? ''),
                                icon: const Icon(
                                    Icons.settings_input_antenna_sharp),
                                color: Colors.purple,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
