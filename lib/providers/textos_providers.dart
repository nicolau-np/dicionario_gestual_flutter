import 'package:dic_project/api/CafeApi.dart';
import 'package:dic_project/models/texto.dart';
import 'package:dic_project/models/http/textos_response.dart';
import 'package:flutter/material.dart';

class TextosProvider extends ChangeNotifier {
  TextosProvider() {
    getTextos();
  }
  List<Texto> textos = [];

  getTextos() async {
    final resp = await CafeApi.httpGet("/textos");

    final textosResp = TextosResponse.fromMap(resp);

    textos = [...textosResp.textos];

    notifyListeners();
  }

}