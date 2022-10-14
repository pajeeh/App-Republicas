// Página para cadastrar usuários, deve conter os seguintes campos:
// - Nome
// - Email
// - Senha
// - Confirmação de senha
// - Telefone

// Deve permitir o usuário realizar cadastro com o google.
// Irá ser armazenado no firebase.
// Deve mostrar uma mensagem de erro caso o usuário já esteja cadastrado.
// Deve mostrar uma mensagem de erro caso o usuário não preencha todos os 
// campos.
// Deve exibir mensagem de confirmação de cadastro, após o usuário clicar 
// no botão de cadastro.
// Botão de cadastro deve ser desabilitado, caso o usuário não preencha tudo.
// Deve ser possível ir para a página inicial, clicando no botão de Home.
// Deve ser possível ir para a página de login, clicando no botão de Login.
// Botão cadastrar irá enviar os dados para o firebase, e irá para a página
// principal, caso o cadastro seja bem sucedido.


import 'package:flutter/material.dart';
import 'package:republicas/pages/home.dart';
import 'package:republicas/pages/user_acc.dart';