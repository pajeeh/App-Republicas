//

import 'package:def_app_republicas/components/colors/colors.dart';
import 'package:def_app_republicas/components/models/txt_field_widget.dart';
import 'package:flutter/material.dart';

class MainLoginFields extends StatelessWidget {
  MainLoginFields({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: transparente,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextInput(
              hintTextString: 'Digite seu e-mail',
              textEditController: emailController,
              inputType: InputType.Email,
              themeColor: Theme.of(context).primaryColor,
              cornerRadius: 48,
              maxLength: 24,
              prefixIcon: const Icon(Icons.email),
              textColor: preto,
              errorMessage: 'Email não pode ser vazio',
              labelText: 'Email',
            ),
            CustomTextInput(
              hintTextString: 'Digite sua senha',
              textEditController: passwordController,
              inputType: InputType.Password,
              themeColor: Theme.of(context).primaryColor,
              cornerRadius: 48,
              maxLength: 24,
              prefixIcon: const Icon(Icons.lock),
              textColor: preto,
              errorMessage: 'Senha não pode ser vazia',
              labelText: 'Senha',
            ),
          ],
        ),
      ),
    );
  }
}
