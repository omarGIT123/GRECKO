import 'package:flutter/material.dart';
import 'package:freeup/globals.dart' as globals;
class MyPaint extends CustomPainter{
  @override

  void paint(Canvas canvas, Size size){
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path Background = Path();
    Background.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(Background, paint);

    Path oval = Path();

    oval.moveTo(0, height * 0.75);

    oval.quadraticBezierTo(width * 0.3, height * 0.6, width * 0.5, height * 1);


      
    oval.lineTo(0, height);

    oval.close();

    paint.color = Color(globals.blue);
    canvas.drawPath(oval, paint);

  }

  @override
  bool shouldRepaint(CustomPainter old){
    return old!=this;
  }
}