import 'package:flutter/material.dart';
class HomeBackground extends StatelessWidget {
  final String image;
  const HomeBackground({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsetsDirectional.only(start: 53,top: 135),
      width: 326,
      height: 205,
      decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.1,
            image: AssetImage(image,),
           // fit: BoxFit.fill,
          )
      ),
    );
  }
}
