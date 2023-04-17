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

    final textosResp = TextosResponse.fromJson(resp);

    textos = [...textosResp.data!];

    notifyListeners();
  }

   getTextoCategory(int id) async {
    final resp = await CafeApi.httpGet("/textos/category/${id}");

    final textosResp = TextosResponse.fromJson(resp);

    textos = [...?textosResp.data];

    notifyListeners();
  }

}