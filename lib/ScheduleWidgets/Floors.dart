import 'package:flutter/material.dart';
import 'package:freeup/ScheduleWidgets/Subfloorwidgets/EachFloor.dart';
import 'package:freeup/globals.dart' as globals;

import 'Subfloorwidgets/Groundfloor.dart';

class Floors extends StatelessWidget {
  const Floors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 20),
      child: Column(
        children: [
          Container(
            height: 24,
            child: Text(
              'Second floor',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(globals.blue),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 9, bottom: 32),
            child: EachFloor(
              floor: 200,
            ),
          ),
          Container(
            height: 24,
            child: Text(
              'First floor',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(globals.blue),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 9, bottom: 32),
            child: EachFloor(
              floor: 100,
            ),
          ),
          Container(
            height: 24,
            child: Text(
              'Ground floor',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(globals.blue),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 9, bottom: 10),
            child: GroundFloor(),
          ),
        ],
      ),
    );
  }
}
