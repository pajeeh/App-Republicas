import 'package:flutter/material.dart';
import 'package:up_reps/plugins/gbtn_plugin.dart';

import '../constants/colors/colors.dart';

class RecoveryPassButton extends StatefulWidget{
  const RecoveryPassButton({Key? key}) : super(key: key);

  @override
  State<RecoveryPassButton> createState() => _RecoveryPassButtonState();
}

class _RecoveryPassButtonState extends State<RecoveryPassButton> {
  TextStyle defaultStyle = const TextStyle(
    color: steelBlue,
    fontSize: 20,
    fontFamily: 'StoryElement',
    fontWeight: FontWeight.w600,
    letterSpacing: 3.5,
  );

  @override
  Widget build(BuildContext context){
    return ButtonPlugin(onPressed: () {}, 
    child: Text('Esqueci a senha',
    style: defaultStyle,
    ),   
    );
  }
}