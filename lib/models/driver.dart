// To parse this JSON data, do
//
//     final driver = driverFromMap(jsonString);

import 'dart:convert';

class Driver {
  Driver({
    this.ine,
    this.niv,
    this.np,
    this.nombre,
    this.credencial,
    this.delegacin,
    this.disponible,
    this.facultad,
    this.licencia,
    this.matricula,
    this.modelo,
    this.precio,
    this.id,
    this.foto,
  });

  String? ine;
  int? niv;
  int? np;
  String? nombre;
  String? credencial;
  String? delegacin;
  bool? disponible;
  String? facultad;
  String? licencia;
  int? matricula;
  String? modelo;
  int? precio;
  String? id;
  String? foto;

  factory Driver.fromJson(String str) => Driver.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Driver.fromMap(Map<String, dynamic> json) => Driver(
      ine: json["INE"],
      niv: json["NIV"],
      np: json["NP"],
      nombre: json["Nombre"],
      credencial: json["credencial"],
      delegacin: json["delegación"],
      disponible: json["disponible"],
      facultad: json["facultad"],
      licencia: json["licencia"],
      matricula: json["matricula"],
      modelo: json["modelo"],
      precio: json["precio"],
      id: json["id"],
      foto: json["foto"]);

  Map<String, dynamic> toMap() => {
        "INE": ine,
        "NIV": niv,
        "NP": np,
        "Nombre": nombre,
        "credencial": credencial,
        "delegación": delegacin,
        "disponible": disponible,
        "facultad": facultad,
        "licencia": licencia,
        "matricula": matricula,
        "modelo": modelo,
        "precio": precio,
        "id": id,
        "foto": foto,
      };
}
