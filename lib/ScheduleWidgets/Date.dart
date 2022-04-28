import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:freeup/globals.dart' as globals;

_DateDState dateState = _DateDState();

class DateD extends StatefulWidget {
  const DateD({Key? key}) : super(key: key);

  @override
  _DateDState createState() {
    dateState = _DateDState();
    return dateState;
  }
}

class _DateDState extends State<DateD> {
  @override

  void refresh(){
    setState(() {
      //dateTitle= dateTitle.add(Duration(days: 1));
       if (globals.thisPage<globals.currentDay){
         globals.dateTitle=globals.dateTitle.subtract(Duration(days:globals.currentDay-globals.thisPage ));
         globals.currentDay = globals.thisPage;
       }
      else   if (globals.thisPage>globals.currentDay) {
        globals.dateTitle=globals.dateTitle.add(Duration(days:globals.thisPage - globals.currentDay));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsetsDirectional.only(top: 136),
        alignment: Alignment.topCenter,
        child: Text(DateFormat('EEEE,d').format(globals.dateTitle).toString(),style:  TextStyle(color: Color(globals.blue),fontSize: 25,fontWeight: FontWeight.bold),));
  }
}
