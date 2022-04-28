import 'package:flutter/material.dart';
import 'dart:math' as math;

class ScheduleBackground extends StatelessWidget {
  final String image;
  const ScheduleBackground({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        margin: const EdgeInsetsDirectional.only(top: 224,start: 155),
        width: 326,
        height: 205,
        decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.1,
              image: AssetImage(image),
              // fit: BoxFit.fill,
            )
        ),
      ),
        Transform(
          transform: Matrix4.rotationY(math.pi),
          child: Container(
            margin: const EdgeInsetsDirectional.only(top: 520,end: 155),
            width: 326,
            height: 205,
            decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: 0.1,
                  image: AssetImage(image),
                  // fit: BoxFit.fill,
                )
            ),
          ),
        ),
    ]
    );
  }
}
