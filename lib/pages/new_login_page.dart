import 'package:def_app_republicas/components/constants/intern.dart';
import 'package:def_app_republicas/components/containers/login_fields_container.dart';
import 'package:def_app_republicas/components/widgets/cadastro_button.dart';
import 'package:def_app_republicas/components/widgets/login_button.dart';
import 'package:def_app_republicas/components/widgets/new_rep_button.dart';
import 'package:flutter/material.dart';
import '../components/colors/colors.dart';
import '../components/constants/logo.dart';
import '../components/constants/texto_banner.dart';
import '../components/widgets/recovery_pass_button.dart';

class NewLoginPage extends StatefulWidget {
  const NewLoginPage({Key? key}) : super(key: key);

  @override
  State<NewLoginPage> createState() => _NewLoginPageState();
}

class _NewLoginPageState extends State<NewLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: aliceBlue,
        body: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(0.15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        const Logo(),
                        const Divider(
                          color: transparente,
                          height: 10,
                        ),
                        const BannerText(),
                        SizedBox(
                          child: Container(
                            color: transparente,
                            padding: const EdgeInsets.all(10),
                            child: MainLoginFields(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            RecoveryPassButton(),
                            SizedBox(
                              width: 10,
                            ),
                            LoginButton(),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Não possui uma conta?',
                              style: TextStyle(
                                color: tomato,
                                fontSize: 18,
                                fontFamily: 'StoryElement',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 2.5,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CadastroButton(),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        //Botão cadastrar nova república
                        const NewRepButton(),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          color: transparente,
                          padding: const EdgeInsets.all(10),
                          child: const Intern(),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
