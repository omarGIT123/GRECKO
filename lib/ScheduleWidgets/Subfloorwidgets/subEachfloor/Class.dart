import 'package:flutter/material.dart';

_ClassState classS = _ClassState();

class Class extends StatefulWidget {
  final int nbr;
  final bool big;
  const Class({Key? key, required this.nbr, required this.big})
      : super(key: key);

  @override
  _ClassState createState() {
    classS = _ClassState();
    return classS;
  }
}

class _ClassState extends State<Class> {
  @override
  Widget build(BuildContext context) {
    double width = 16;
    double height = 16;
    if (widget.big) {
      width = 48;
      height = 48;
    }
    if (!widget.big) {
      width = 16;
      height = 16;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF94F9FF), borderRadius: BorderRadius.circular(3)),
        width: width,
        height: height,
      ),
    );
  }
}
