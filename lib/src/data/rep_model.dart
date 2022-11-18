class Republica {
  Republica({
    required this.id,
    required this.aluguel,
    required this.endereco,
    required this.quartos,
    required this.banheiros,
    required this.areaLazer,
    required this.garagem,
    required this.vagas,
  });

  double aluguel;
  int quartos;
  int banheiros;
  bool garagem;
  int vagas;
  String endereco;
  bool areaLazer;
  int id;

  String get descricao => "Descrição da república";
}
