import 'package:dic_project/view/widgets/video.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dic_project/providers/textos_providers.dart';

class ModalSheet extends StatefulWidget {
  final String text;
  const ModalSheet({super.key, required this.text});

  @override
  State<ModalSheet> createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchTexto();
  }

  Future<void> searchTexto() async {
    await Provider.of<TextosProvider>(context, listen: false)
        .searchTexto(widget.text);
  }

  @override
  Widget build(BuildContext context) {
    final texto = Provider.of<TextosProvider>(context).texto;
    print(texto);

    return Scaffold(
        body: Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              widget.text,
              style: const TextStyle(
                fontSize: 19,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const VideoWidget("https://youtu.be/AxBDTcaHNTE"),
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
