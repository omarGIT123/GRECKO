import 'package:flutter/material.dart';
import 'package:freeup/globals.dart' as globals;

class TextAndPPP extends StatefulWidget {
  const TextAndPPP({Key? key}) : super(key: key);

  @override
  _TextAndPPPState createState() => _TextAndPPPState();
}

class _TextAndPPPState extends State<TextAndPPP> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 13,start: 24,end: 73),
              child: Text('Hello Insatien',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(globals.blue)),),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 8.0,start: 24),
              child: Text('Find your place fast',style: TextStyle(fontSize: 16,color: Color(globals.blue)), ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 30,bottom: 16,end: 25),
          child: Container(
            width: 50,
            height: 50,
            child: Image.asset('assets/E.png'),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        )
      ],
    );
  }
}
