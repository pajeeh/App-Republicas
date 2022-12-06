import 'package:flutter/material.dart';
import '../widgets/new_rep_btn_widget.dart';
import '../constants/colors/colors.dart';
import '../constants/txt_banner.dart';
import '../widgets/lgn_btn_widget.dart';
import '../widgets/cad_btn_widget.dart';
import '../widgets/logo.dart';
import '../widgets/main_lgn_fields_widget.dart';
import '../widgets/recovery_pass_btn_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
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
                          const SizedBox(height: 10),
                          const Logo(),
                          const SizedBox(height: 10),
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
                              SizedBox(width: 10),
                              LoginButtonWidget(),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'Não tem uma conta?',
                                style: TextStyle(
                                  color: tomato,
                                  fontFamily: 'StoryElement',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2.25,
                                ),
                              ),
                              SizedBox(width: 5),
                              CadButton(),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const NRepBtnWidget(),
                          const SizedBox(height: 5),
                          Container(
                            padding: const EdgeInsets.all(10),
                            color: transparente,
                            child: Image.asset('/images/intern.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
