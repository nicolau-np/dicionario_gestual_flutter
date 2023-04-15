import 'dart:convert';

import 'package:dic_project/models/texto.dart';

class TextosResponse {
  TextosResponse({
    required this.total,
    required this.textos,
  });

  int total;
  List<Texto> textos;

  factory TextosResponse.fromJson(String str) =>
      TextosResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TextosResponse.fromMap(Map<String, dynamic> json) =>
      TextosResponse(
        total: json["total"],
        textos: List<Texto>.from(
            json["textos"].map((x) => Texto.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
    "total": total,
    "textos": List<dynamic>.from(textos.map((x) => x.toMap())),
  };
}