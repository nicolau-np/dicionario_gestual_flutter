import 'package:dic_project/api/CafeApi.dart';

import 'package:flutter/material.dart';
import 'package:dic_project/models/tipo_texto.dart';

import '../models/http/tipo_texto_response.dart';

class TipoTextosProvider extends ChangeNotifier {
  TipoTextosProvider() {
    getTipoTextos();
  }
  List<TipoTexto> tipo_textos = [];

  Future<void> getTipoTextos() async {
    final resp = await CafeApi.httpGet("/tipo-textos");

    final tipotextosResp = TipoTextoResponse.fromJson(resp);

    tipo_textos = [...tipotextosResp.data!];

    notifyListeners();
  }
}
