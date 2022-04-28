import 'package:flutter/material.dart';
import 'package:freeup/globals.dart' as globals;
//import 'package:freeup/RoutesHERO/HeroRoute.dart';

class TextButtons extends StatelessWidget {
  final BuildContext context1;
  final Widget route;
  final String header;
  final String guide;
  const TextButtons({Key? key, required this.header , required this.guide,required this.route,required this.context1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: (){
          Navigator.push(context1, PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 800),
          transitionsBuilder: (BuildContext context,Animation<double> animation, Animation<double>secanimation,Widget child){
          animation = CurvedAnimation(parent: animation, curve: Curves.easeInOutSine);
          return FadeTransition(
          child: child,
          opacity: animation);
          },
          pageBuilder: (BuildContext context,Animation<double> animation, Animation<double>secanimation) => route
          )
          );
          //Navigator.pushNamed(context1, route);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsetsDirectional.only(top: 13,start: 24),
                child: Text(header,style: TextStyle(fontSize: 24,color: Color(globals.blue),fontWeight: FontWeight.bold),)),

            Container(
                margin: const EdgeInsetsDirectional.only(top: 8,start: 24,bottom: 14),
                child: Text(guide,style: TextStyle(fontSize: 15,color: Color(globals.blue)),)),

          ],
        ),
      ),
      margin: const EdgeInsetsDirectional.only(top: 30),
      height: 82,
      width: 328,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: 1,
            color: Color(globals.blue),
          )
      ),
    );
  }
}
