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
