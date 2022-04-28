import 'package:flutter/material.dart';
import 'package:freeup/globals.dart' as globals;
class TextHome extends StatelessWidget {
  const TextHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Current Floors state ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(globals.blue)),),
        Padding(
          padding: const EdgeInsetsDirectional.only(top :6.0),
          child: Text('How full each floor is ?',style: TextStyle(fontSize: 16,color: Color(globals.blue)),),
        ),
      ],
    );
  }
}
