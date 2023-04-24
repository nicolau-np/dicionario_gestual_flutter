import 'package:dic_project/api/CafeApi.dart';
import 'package:dic_project/models/texto.dart';
import 'package:dic_project/models/http/textos_response.dart';
import 'package:flutter/material.dart';

class TextosProvider extends ChangeNotifier {
  TextosProvider() {
    getTextos();
  }
  List<Texto> textos = [];
  Texto? texto ;

  Future<void> getTextos() async {
    final resp = await CafeApi.httpGet("/textos");

    final textosResp = TextosResponse.fromJson(resp);

    textos = [...textosResp.data!];

    notifyListeners();
  }

  Future<void> getTextoCategory(int id) async {
    final resp = await CafeApi.httpGet("/textos/category/$id");

    final textosResp = TextosResponse.fromJson(resp);

    textos = [...textosResp.data!];

    notifyListeners();
  }

  Future<void> searchTexto(String palavra) async {
    final resp = await CafeApi.httpGet("/textos/search/$palavra");

    final textosResp = Texto.fromJson(resp['data']);

    texto = textosResp;

    notifyListeners();
  }
}
