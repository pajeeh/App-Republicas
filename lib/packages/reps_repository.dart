// Repositório de repúblicas
// src/data/rep_model.dart

import '../src/data/rep_model.dart';

class Republicas {
  static List<Republica> repLista = [
    Republica(
      id: 1,
      aluguel: 1000,
      endereco: 'Rua 1',
      quartos: 3,
      banheiros: 2,
      areaLazer: true,
      garagem: true,
      vagas: 1,
    ),
    Republica(
      id: 2,
      aluguel: 2000,
      endereco: 'Rua 2',
      quartos: 4,
      banheiros: 3,
      areaLazer: true,
      garagem: true,
      vagas: 2,
    ),
    Republica(
      id: 3,
      aluguel: 3000,
      endereco: 'Rua 3',
      quartos: 5,
      banheiros: 4,
      areaLazer: true,
      garagem: true,
      vagas: 2,
    ),
  ];

  static List<String> imageList = [
    "images/republica1.jpg",
    "images/republica2.jpg",
    "images/republica3.jpg",
  ];
}
