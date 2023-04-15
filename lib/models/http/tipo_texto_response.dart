import '../tipo_texto.dart';

class TipoTextoResponse {
  List<TipoTexto>? data;

  TipoTextoResponse({this.data});

  TipoTextoResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <TipoTexto>[];
      json['data'].forEach((v) {
        data!.add(new TipoTexto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}