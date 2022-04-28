import 'package:flutter/material.dart';
import 'package:freeup/globals.dart' as generals;

_CarrouselBuildState carrousel= _CarrouselBuildState();
class CarrouselBuild extends StatefulWidget {
  final int index;
  final int thispage;
   const CarrouselBuild({Key? key,required this.index,required this.thispage}) : super(key: key);

  @override
  _CarrouselBuildState createState() {
    carrousel = _CarrouselBuildState();
    return carrousel;
  }
}

class _CarrouselBuildState extends State<CarrouselBuild> {
  @override
  Widget build(BuildContext context) {

    double height=91;
    double width = 51;

    if(widget.index == widget.thispage){
      generals.colorText = generals.Aries;
      generals.colorBorder = generals.Aries;
      generals.colorBack = generals.blue;
    }
    if(widget.index != widget.thispage)
      {
        generals.colorText = generals.blue;
        generals.colorBorder = generals.blue;
        generals.colorBack = 0xFFFFFFFF;
      }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(51),
          color: Color(generals.colorBack),
          border: Border.all(color: Color(generals.colorBorder))
      ),
      child: Column(
        children: [
          Container(
            child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 8,bottom: 10),
                child: Text(generals.DAY[widget.index],style: TextStyle(color: Color(generals.colorText),fontSize: 14,fontWeight: FontWeight.bold),)),
          ),

          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Color(generals.colorBorder))
            ),
            child: Center(child: Text('${widget.index+1}',style: TextStyle(color: Color(generals.colorText)),)),
          )
        ],
      ),
    );
  }
}
