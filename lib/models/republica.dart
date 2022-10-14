// classe que representa uma república
// deve conter os atributos e métodos necessários para o funcionamento
// do sistema.

import 'dart:ffi';

class Republica {
  String? nome;
  String? endereco;
  String? descricao;
  double? preco;
  int? numVagas;
  int? numQuartos;
  int? numBanheiros;
  Array? genero;
  bool? garagem;
  bool? internet;
  bool? animais;
  Array? tipoQuarto;
  bool? areaLazer;
  List<String>? fotos;

  Republica({
    required this.nome,
    required this.endereco,
    required this.descricao,
    required this.preco,
    required this.numVagas,
    required this.numQuartos,
    required this.numBanheiros,
    required this.genero,
    required this.garagem,
    required this.internet,
    required this.animais,
    required this.tipoQuarto,
    required this.areaLazer,
    required this.fotos,
  });
}
