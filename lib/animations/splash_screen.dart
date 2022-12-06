// ToDo: implement splash screen animation
// irá utilizar a logo do app em um fundo branco
// * splashScreen => HomeScreen

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:up_reps/animations/home_screen.dart';
import '../constants/colors/colors.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:async';

import '../pages/login_page.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SecondPage(),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 400), () {
      setState(() {
        _a = true;
      });
    });
    Timer(const Duration(milliseconds: 400), () {
      setState(() {
        _b = true;
      });
    });
    Timer(const Duration(milliseconds: 1300), () {
      setState(() {
        _c = true;
      });
    });
    Timer(const Duration(milliseconds: 1700), () {
      setState(() {
        _e = true;
      });
    });
    Timer(const Duration(milliseconds: 3400), () {
      setState(() {
        _d = true;
      });
    });
    Timer(const Duration(milliseconds: 3850), () {
      setState(() {
        Navigator.of(context).pushReplacement(
          ThisIsFadeRoute(
            route: const ThirdPage(),
            page: const HomeScreen(),
          ),
        );
      });
    });
  }

  bool _a = false;
  bool _b = false;
  bool _c = false;
  bool _d = false;
  bool _e = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: preto,
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: _d ? 900 : 2500),
              curve: _d ? Curves.fastLinearToSlowEaseIn : Curves.elasticOut,
              height: _d
                  ? 0
                  : _a
                      ? h / 2
                      : 20,
              width: 20,
              // color: Colors.deepPurpleAccent,
            ),
            AnimatedContainer(
              duration: Duration(
                  seconds: _d
                      ? 1
                      : _c
                          ? 2
                          : 0),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _d
                  ? h
                  : _c
                      ? 80
                      : 20,
              width: _d
                  ? w
                  : _c
                      ? 200
                      : 20,
              decoration: BoxDecoration(
                color: _b ? branco : transparente,
                // shape: _c? BoxShape.rectangle : BoxShape.circle,
                borderRadius: _d
                    ? const BorderRadius.only()
                    : BorderRadius.circular(
                        30,
                      ),
              ),
              child: Center(
                child: _e
                    ? AnimatedTextKit(
                        totalRepeatCount: 1,
                        animatedTexts: [
                          FadeAnimatedText(
                            'Up Reps',
                            duration: const Duration(milliseconds: 1700),
                            textStyle: const TextStyle(
                              fontFamily: 'BodoAmatic',
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: preto,
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThisIsFadeRoute extends PageRouteBuilder {
  final Widget page;
  final Widget route;

  ThisIsFadeRoute({required this.page, required this.route})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: route,
          ),
        );
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}
