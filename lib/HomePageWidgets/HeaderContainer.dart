import 'package:flutter/material.dart';
import 'package:freeup/HomePageWidgets/HeaderWidgets.dart/SidebarWidgets.dart';
import 'package:freeup/globals.dart' as globals;
import 'HeaderWidgets.dart/Powered.dart';
class HeaderContainer extends StatefulWidget {
  const HeaderContainer({Key? key}) : super(key: key);

  @override
  State<HeaderContainer> createState() => _HeaderContainerState();
}

class _HeaderContainerState extends State<HeaderContainer> {
  double height = 40;
  double mar = 0;
  double mar2 = 0;
  double Rad = 50;
  double width = 72;
  bool big = false;
  double top = 67;
  double start = 34;
  double marginTOP = 25;
  double width2 = 41;
  double heigth2 = 41;
  bool isvisible = true;

  void updateProp(){
    setState(() {
      if(!big){
        height = MediaQuery.of(context).size.height;
        width=338;
        Rad = 20;
        top = 47;
        start = 24;
        marginTOP = 0;
        mar = 70;
        width2 = 51;
        heigth2 = 31;
        big = true;
      }
      else if (big) {
        height = 40;
        width = 72;
        Rad = 50;
        top=67;
        start = 34;
        mar = 0;
        width2 = 41;
        heigth2 = 41;
        marginTOP = 25;
        big = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return AnimatedContainer(
        margin: EdgeInsetsDirectional.only(top: marginTOP),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        decoration:  BoxDecoration(
            color: Color(globals.blue),
            borderRadius: BorderRadius.only(topRight: Radius.circular(Rad),bottomRight: Radius.circular(Rad))
        ),
        //margin: const EdgeInsetsDirectional.only(top: 25),
        width: width,
        height: height,
        alignment: Alignment.centerLeft,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                padding: EdgeInsetsDirectional.only(top: top),
                child: Column(
                  children: [
                    AnimatedOpacity(
                      curve: Curves.easeInOut,
                      opacity: isvisible ? 0.0 : 1.0,
                      duration: const Duration(milliseconds: (700)),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),

                        child:
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(start :24,end: 67),
                                  child: Text('GRECKO',style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Color(globals.Aries)),maxLines: 1,),
                                ),

                                const Padding(
                                  padding: EdgeInsetsDirectional.only(top: 185,start: 40),
                                  child: SidebarWidgets(),
                                ),

                                Container(
                                    margin: EdgeInsetsDirectional.only(top: MediaQuery.of(context).size.height-110,bottom: 49,start: 34,end: 45),
                                    child: const Powered())

                              ],
                            )

                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              curve: Curves.ease,
              margin: EdgeInsetsDirectional.only(top: mar,end: mar2),
              alignment: Alignment.topRight,
              child: SizedBox(
                width: width2,
                height: heigth2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                      primary: Color(globals.Aries),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(41))
                  ),
                  onPressed: () {
                    updateProp();
                    setState(() {
                      isvisible = !isvisible;
                    });
                  },
                  child: Container(
                      child: const Icon(Icons.format_list_bulleted_rounded,color: Colors.black,)),
                ),
              ),
            ),
          ],
        ),

    );
  }
}
