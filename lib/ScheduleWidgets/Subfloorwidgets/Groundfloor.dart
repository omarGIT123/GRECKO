import 'package:flutter/material.dart';
import 'package:freeup/globals.dart' as globals;

import 'subEachfloor/Class.dart';

_GroundFloorState grounds = _GroundFloorState();

class GroundFloor extends StatefulWidget {
  const GroundFloor({Key? key}) : super(key: key);

  @override
  _GroundFloorState createState() {
    grounds = _GroundFloorState();
    return grounds;
  }
}

class _GroundFloorState extends State<GroundFloor> {
  Widget getWidgets() {
    List<Widget> list = <Widget>[];
    for (var i = 0; i < 9; i++) {
      list.add(Class(
        nbr: i + 1,
        big: false,
      ));
    }
    return Row(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 65,
      decoration: BoxDecoration(
          color: Color(globals.blue), borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(onTap: () {}, child: getWidgets()),
      ),
    );
  }
}
