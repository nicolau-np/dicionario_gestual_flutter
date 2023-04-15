import 'dart:convert';

class Texto {
  Texto({
    required this.id,
    required this.texto,
    required this.video,
    required this.img,
    required this.estado,
    required this.tipo_texto,
  });

  String id;
  String texto;
  String video;
  String img;
  String estado;
  _TipoTexto tipo_texto;

  factory Texto.fromJson(String str) => Texto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Texto.fromMap(Map<String, dynamic> json) => Texto(
    id: json["id"],
    texto: json["texto"],
    video: json["video"],
    img: json["img"],
    estado: json["estado"],
    tipo_texto: _TipoTexto.fromMap(json["tipo_texto"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "texto": texto,
    "video": video,
    "img": img,
    "estado": estado,
    "tipo_texto": tipo_texto.toMap(),
  };
}

class _TipoTexto {
  _TipoTexto({
    required this.id,
    required this.tipo,
    required this.img,
    required this.estado,
  });

  String id;
  String tipo;
  String img;
  String estado;

  factory _TipoTexto.fromJson(String str) => _TipoTexto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory _TipoTexto.fromMap(Map<String, dynamic> json) => _TipoTexto(
    id: json["id"],
    tipo: json["tipo"],
    img: json["img"],
    estado: json["estado"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "tipo": tipo,
    "img": img,
    "estado": estado,
  };
}