class Republica {
  String nome;
  String endereco;
  String descricao;
  String aluguel;
  String redeSocial;
  String imageUrl;

  Republica(this.nome, this.endereco, this.descricao, this.aluguel,
      this.redeSocial, this.imageUrl);

  static List<Republica> getRepublicas() {
    return <Republica>[
      Republica(
        'Republica 1',
        'Rua 1',
        'Descrição 1',
        'R\$ 1.000,00',
        'Instagram',
        '/images/public/Republica1.jpg',
      ),
      Republica(
        'Republica 2',
        'Rua 2',
        'Descrição 2',
        'R\$ 2.000,00',
        'Facebook',
        '/images/public/Republica2.jpg',
      ),
      Republica(
        'Republica 3',
        'Rua 3',
        'Descrição 3',
        'R\$ 3.000,00',
        'Instagram',
        '/images/public/Republica3.jpg',
      ),
      Republica(
        'Republica 4',
        'Rua 4',
        'Descrição 4',
        'R\$ 4.000,00',
        'Facebook',
        '/images/public/Republica4.jpg',
      ),
      Republica(
        'Republica 5',
        'Rua 5',
        'Descrição 5',
        'R\$ 5.000,00',
        'Instagram',
        '/images/public/Republica5.jpg',
      ),
    ];
  }

  static List<Republica> getBestOffer() {
    return <Republica>[
      Republica(
        'Republica 1',
        'Rua 1',
        'Descrição 1',
        'R\$ 1.000,00',
        'Instagram',
        '/images/public/Republica1.jpg',
      ),
      Republica(
        'Republica 2',
        'Rua 2',
        'Descrição 2',
        'R\$ 2.000,00',
        'Facebook',
        '/images/public/Republica2.jpg',
      ),
      Republica(
        'Republica 3',
        'Rua 3',
        'Descrição 3',
        'R\$ 3.000,00',
        'Instagram',
        '/images/public/Republica3.jpg',
      ),
    ];
  }
}
