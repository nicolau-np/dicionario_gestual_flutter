class Texto {
  int? id;
  TipoTexto? tipoTexto;
  String? texto;
  String? video;
  String? img;
  String? estado;

  Texto(
      {this.id, this.tipoTexto, this.texto, this.video, this.img, this.estado});

  Texto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tipoTexto = json['tipo_texto'] != null
        ? new TipoTexto.fromJson(json['tipo_texto'])
        : null;
    texto = json['texto'];
    video = json['video'];
    img = json['img'];
    estado = json['estado'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.tipoTexto != null) {
      data['tipo_texto'] = this.tipoTexto!.toJson();
    }
    data['texto'] = this.texto;
    data['video'] = this.video;
    data['img'] = this.img;
    data['estado'] = this.estado;
    return data;
  }
}

class TipoTexto {
  int? id;
  String? tipo;
  String? img;
  String? estado;

  TipoTexto({this.id, this.tipo, this.img, this.estado});

  TipoTexto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tipo = json['tipo'];
    img = json['img'];
    estado = json['estado'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tipo'] = this.tipo;
    data['img'] = this.img;
    data['estado'] = this.estado;
    return data;
  }
}