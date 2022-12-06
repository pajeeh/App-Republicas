// ! Página para iniciar o app

/*
problema: Layout overflow by
solução: singlechildscrollview ou set resizetoavoidbottominset \
resizetoavoidbottompadding to false in scaffold
*/
import 'package:flutter/material.dart';
import 'animations/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0xfff5f6f6),
        primaryColor: const Color(0xff811b83),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xfffa5019),
        ),
        textTheme: TextTheme(
          headline1: const TextStyle(
            color: Color(0xff100e34),
          ),
          bodyText1: TextStyle(
            color: const Color(0xff100e34).withOpacity(0.5),
          ),
        ),
      ),
      home: Scaffold(body: _Body()),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(color: Colors.red),
      child: SafeArea(
        child: _SafeHeightWidget(),
      ),
    );
  }
}

class _SafeHeightWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return const MySplashScreen();
      },
    );
  }
}
