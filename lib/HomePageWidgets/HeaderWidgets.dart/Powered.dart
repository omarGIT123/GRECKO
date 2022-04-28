import 'package:flutter/material.dart';

class Powered extends StatelessWidget {
  const Powered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: <Color>[Color(0xff1FDBE7), Color(0xffEF4292),Color(0xff1FDBE7)],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 320, 70.0));
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
         Text('Powered by',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,foreground: Paint()..shader = linearGradient),),
         Text('@Y.B',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,foreground: Paint()..shader = linearGradient),),
         Text('&',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,foreground: Paint()..shader = linearGradient),),
         Text('@O.B',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,foreground: Paint()..shader = linearGradient),),
       ],
    );
  }
}
