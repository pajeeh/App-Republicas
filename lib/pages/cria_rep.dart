// Página que irá cadastrar uma república
// ToDo: Estilizar para ficar semelhante ao aplicativo(iOS)
// ignore_for_file: unused_import, unused_field, overridden_fields, use_key_in_widget_constructors, annotate_overrides, non_constant_identifier_names

import 'package:def_app_republicas/components/widgets/premium_ad_button.dart';
import 'package:def_app_republicas/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/colors/colors.dart';
import '../components/models/floating_widget.dart';
import '../components/models/nrep_widget.dart';
import '../src/data/rep_model.dart';
import 'home/home_screen.dart';

class CriaRepScreen extends StatefulWidget {
  const CriaRepScreen({super.key});

  @override
  State<CriaRepScreen> createState() => _CriaRepScreenState();
}

class _CriaRepScreenState extends State<CriaRepScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Scaffold(
          backgroundColor: branco,
          body: CadastrarNovaRep(),
        ),
      ),
    );
  }
}

class CadastrarNovaRep extends StatefulWidget {
  const CadastrarNovaRep({super.key});

  @override
  State<CadastrarNovaRep> createState() => _CadastrarNovaRepState();
}

// ! Campos do formulário:
/* 
 * Nome da república
 * Endereço
 * Número de vagas
 * Valor do aluguel(individual)
 * Valor do aluguel(coletivo)
 * Possui garagem?
 * Quantos quartos?
 * Quantos banheiros?
 * Possui área de lazer?
 * Descrição
*/

class _CadastrarNovaRepState extends State<CadastrarNovaRep> {
  final _formKey = GlobalKey<FormState>();
  final _nomeRepController = TextEditingController();
  final _enderecoController = TextEditingController();
  final _vagasController = TextEditingController();
  final _aluguelIndController = TextEditingController();
  final _aluguelColController = TextEditingController();
  final _quartosController = TextEditingController();
  final _banheirosController = TextEditingController();
  final _descricaoController = TextEditingController();
  bool _garagem = false;
  bool _areaLazer = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            const Text(
              "Cadastrar República",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  NRepWidget(
                    controller: _nomeRepController,
                    label: "Nome da República",
                    hint: "Ex: República dos estudantes",
                    key: const Key('nomeRep'),
                  ),
                  NRepWidget(
                    controller: _enderecoController,
                    label: "Endereço",
                    hint: "Ex: Rua dos estudantes, 123",
                    key: const Key('endereco'),
                  ),
                  NRepWidget(
                    controller: _vagasController,
                    label: "Número de vagas",
                    hint: "Ex: 5",
                    key: const Key('vagas'),
                  ),
                  NRepWidget(
                    controller: _aluguelIndController,
                    label: "Valor do aluguel individual",
                    hint: "Ex: 500",
                    key: const Key('aluguelInd'),
                  ),
                  NRepWidget(
                    controller: _aluguelColController,
                    label: "Valor do aluguel coletivo",
                    hint: "Ex: 1000",
                    key: const Key('aluguelCol'),
                  ),
                  NRepWidget(
                    controller: _quartosController,
                    label: "Quantidade de quartos",
                    hint: "Ex: 3",
                    key: const Key('quartos'),
                  ),
                  NRepWidget(
                    controller: _banheirosController,
                    label: "Quantidade de banheiros",
                    hint: "Ex: 2",
                    key: const Key('banheiros'),
                  ),
                  NRepWidget(
                    controller: _descricaoController,
                    label: "Descrição",
                    hint: "Ex: República com ótima localização",
                    key: const Key('descricao'),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Possui garagem?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Switch(
                            value: _garagem,
                            onChanged: (value) {
                              setState(() {
                                _garagem = value;
                              });
                            },
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "Possui área de lazer?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Switch(
                            value: _areaLazer,
                            onChanged: (value) {
                              setState(() {
                                _areaLazer = value;
                              });
                            },
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        var rep = RepModel(
                          nome: _nomeRepController.text,
                          endereco: _enderecoController.text,
                          vagas: int.parse(_vagasController.text),
                          aluguelIndividual:
                              double.parse(_aluguelIndController.text),
                          aluguelColetivo:
                              double.parse(_aluguelColController.text),
                          garagem: _garagem,
                          quartos: int.parse(_quartosController.text),
                          banheiros: int.parse(_banheirosController.text),
                          areaLazer: _areaLazer,
                          descricao: _descricaoController.text,
                        );
                        print(rep);
                      }
                      // Exibe um pop-up com o nome da república cadastrada
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "República ${_nomeRepController.text} cadastrada com sucesso!",
                          ),
                        ),
                      );
                      // Direciona para a tela de listagem de repúblicas
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewHomePageScreen(),
                        ),
                      );
                    },
                    child: const Text("Cadastrar"),
                  ),
                  const SizedBox(height: 10),
                  const AnuncioPremiumButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  RepModel({
    required String nome,
    required String endereco,
    required int vagas,
    required double aluguelIndividual,
    required double aluguelColetivo,
    required bool garagem,
    required int quartos,
    required int banheiros,
    required bool areaLazer,
    required String descricao,
  }) {}
}

class RepModel {
  final String nome;
  final String endereco;
  final int vagas;
  final double aluguelIndividual;
  final double aluguelColetivo;
  final bool garagem;
  final int quartos;
  final int banheiros;
  final bool areaLazer;
  final String descricao;

  RepModel({
    required this.nome,
    required this.endereco,
    required this.vagas,
    required this.aluguelIndividual,
    required this.aluguelColetivo,
    required this.garagem,
    required this.quartos,
    required this.banheiros,
    required this.areaLazer,
    required this.descricao,
  });

  @override
  String toString() {
    return 'RepModel(nome: $nome, endereco: $endereco, vagas: $vagas, aluguelIndividual: $aluguelIndividual, aluguelColetivo: $aluguelColetivo, garagem: $garagem, quartos: $quartos, banheiros: $banheiros, areaLazer: $areaLazer, descricao: $descricao)';
  }
}

class NRepWidget extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final Key key;

  const NRepWidget({
    required this.controller,
    required this.label,
    required this.hint,
    required this.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        key: key,
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Campo obrigatório';
          }
          return null;
        },
      ),
    );
  }
}
