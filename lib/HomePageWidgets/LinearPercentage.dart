import 'package:flutter/material.dart';
import 'package:freeup/globals.dart' as globals;

class LinearPercentage extends StatefulWidget {
  final int percent;
  final String floor;
 const LinearPercentage({Key? key,required this.percent,required this.floor}) : super(key: key);

  @override
  State<LinearPercentage> createState() => _LinearPercentageState();
}

class _LinearPercentageState extends State<LinearPercentage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Stack(
          children: [SizedBox(
            height: 43,
            child: LinearProgressIndicator(
              value: widget.percent/100,
              valueColor: AlwaysStoppedAnimation<Color>(Color(globals.blue)),
              backgroundColor: Colors.white,

            ),
          ),
            Align(child: Text(widget.percent.toString()+'%',style: TextStyle(color: Color(globals.Aries),fontWeight: FontWeight.bold),), alignment: Alignment.center,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 5),
              child: Align(child: Text(widget.floor +' :',style: TextStyle(color: Color(globals.Aries),fontWeight: FontWeight.bold),), alignment: Alignment.centerLeft, ),
            ),
        ]
        ),
      ),

      margin: const EdgeInsetsDirectional.only(top: 15),
      height: 43,
      width: 288,

      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(11)),
          border: Border.all(
            width: 1,
            color: Color(globals.blue),
          )
      ),
    );
  }
}