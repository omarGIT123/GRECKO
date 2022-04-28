import 'package:flutter/material.dart';
import 'package:freeup/Schedule.dart';
import 'package:freeup/globals.dart' as globals;
import 'Date.dart';
import 'Carrousel.dart';
class Refresh extends StatefulWidget {
  const Refresh({Key? key}) : super(key: key);

  @override
  State<Refresh> createState() => _RefreshState();
}

class _RefreshState extends State<Refresh> {
  bool isvisible = true;
  Widget Txt =AnimatedSwitcher(duration: const Duration(milliseconds: 500) ,
    switchInCurve: Curves.ease,
    switchOutCurve: Curves.ease,
    child:Container(
      height: 40,
      width: 84,
      decoration: BoxDecoration(
        color:const Color(0xFF94F9FF) ,
        borderRadius: BorderRadius.circular(10),
      ),
      //color: Color(0xFF94F9FF),
    key: const ValueKey(1),
      child: const Center(child: Text('Refresh',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF05103A))))
    )
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomRight,
        margin: const EdgeInsetsDirectional.only(top: 113,end: 32),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Visibility(
              visible: isvisible,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                  onTap: ()async{
                    setState(()  {
                      isvisible = false;
                      Txt = Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 14),
                            child: Image.asset('assets/ref.png'),
                          ),
                          const Text("Updating status ...",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFFEF4292)),key: ValueKey(2),),
                        ],
                      );
                    });
                    await Future.delayed(const Duration(milliseconds: 1000));
                    Navigator.pushReplacement(context, PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 1000),
                        transitionsBuilder: (BuildContext context,Animation<double> animation, Animation<double>secanimation,Widget child){
                          animation = CurvedAnimation(parent: animation, curve: Curves.easeInOutSine);
                          return FadeTransition(
                              child: child,
                              opacity: animation);
                        },
                        pageBuilder: (BuildContext context,Animation<double> animation, Animation<double>secanimation) => const Schedule()
                    )
                    );
                    // globals.currentDay = globals.Current();
                    // globals.thisPage = globals.currentDay;
                      dateState.setState(() {
                      globals.dateTitle = DateTime.now();
                    });
                    carrouselS.setState(() {
                      globals.currentDay = globals.Current();
                      globals.thisPage = globals.currentDay;
                    });

                  },
                  child: Txt),
            ),
            Visibility(
                visible: !isvisible,
                child: Txt),
          ],
        ),

    );
  }
}
