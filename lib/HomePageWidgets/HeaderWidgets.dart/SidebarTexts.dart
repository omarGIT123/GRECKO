import 'package:flutter/material.dart';

class SideBarText extends StatelessWidget {
  final String txt;
  final Widget route;
  final BuildContext context1;
  const SideBarText({Key? key,required this.txt,required this.context1,required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsetsDirectional.only(start: 19),
        child: InkWell(
          onTap: (){
            Navigator.pushReplacement(context, PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 500),
                transitionsBuilder: (BuildContext context,Animation<double> animation, Animation<double>secanimation,Widget child){
                  animation = CurvedAnimation(parent: animation, curve: Curves.easeInOutSine);
                  return FadeTransition(
                      child: child,
                      opacity: animation);
                },
                pageBuilder: (BuildContext context,Animation<double> animation, Animation<double>secanimation) => route
            ));
          },
          child:  Text(txt,style: const TextStyle(color: Color(0xFFE2D7D7),fontSize: 18,fontWeight: FontWeight.bold),),
        )
    );
  }
}
