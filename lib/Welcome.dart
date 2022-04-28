import 'package:flutter/material.dart';
import 'Home.dart';
import 'globals.dart' as globals;
import 'CustomPaint/Custompaint.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home: Scaffold(
              body: Stack(
                children: [
                  CustomPaint(
                    size: Size.infinite,
                    painter: MyPaint(),

                  ),
                  SingleChildScrollView(
                    child: TweenAnimationBuilder(
                      duration: const Duration(milliseconds: 1000),
                      tween: Tween<double>(begin: 0, end: 1),
                      builder: (BuildContext context, double op, Widget? child){
                        return Opacity(
                          opacity: op,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: op * 20),
                            child: child,
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(top: 89),
                        child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('GRECKO',style: TextStyle(fontSize: 69,fontWeight: FontWeight.bold,color: Color(globals.blue)),),
                              Container(
                                height: 114,
                                width: 296,
                                margin: const EdgeInsetsDirectional.only(top: 24),
                                child: RichText(
                                    text: TextSpan(
                                        children: [
                                              const TextSpan(text: 'is an app made for ',style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.w600)),
                                              TextSpan(text: 'INSAT students',style: TextStyle(fontSize: 24,color: Color(globals.Aries),fontWeight: FontWeight.w600)),
                                              const TextSpan(text: "who can't find a place to study when the SL is crowded",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.w600)),
                                        ]
                                    )
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsetsDirectional.only(top:48),
                                  child: Image.asset('assets/1.png')),
                              Container(
                                margin: const EdgeInsetsDirectional.only(top: 112,start: 177),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(globals.blue)),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                height: 69,
                                width: 164,
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.pushReplacement(context, PageRouteBuilder(
                                        transitionDuration: const Duration(milliseconds: 1500),
                                    transitionsBuilder: (BuildContext context,Animation<double> animation, Animation<double>secanimation,Widget child){
                                    animation = CurvedAnimation(parent: animation, curve: Curves.easeInOutSine);
                                    return FadeTransition(
                                    child: child,
                                    opacity: animation);
                                    },
                                    pageBuilder: (BuildContext context,Animation<double> animation, Animation<double>secanimation) => const Home()
                                    ));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'NEXT',
                                          style: TextStyle(
                                            fontSize: 32,
                                            color: Color(globals.blue),
                                            fontWeight: FontWeight.bold
                                          ),
                                      ),
                                      Icon(Icons.arrow_right,size: 52,color: Color(globals.blue),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
    );
  }
}
