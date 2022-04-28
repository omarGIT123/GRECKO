import 'package:flutter/material.dart';
import 'package:freeup/ScheduleWidgets/Subfloorwidgets/subEachfloor/Class.dart';
import 'package:freeup/globals.dart' as globals;

_EachFloorState eachfloors = _EachFloorState();

class EachFloor extends StatefulWidget {
  final int floor;
  const EachFloor({Key? key, required this.floor}) : super(key: key);

  @override
  _EachFloorState createState() {
    eachfloors = _EachFloorState();
    return eachfloors;
  }
}

class _EachFloorState extends State<EachFloor> {
  int n = 0;
  Widget getWidgets() {
    List<Widget> list = <Widget>[];
    for (var i = 0; i < 9; i++) {
      list.add(Column(
        children: [
          Class(
            nbr: widget.floor + n + 1,
            big: false,
          ),
          Class(
            nbr: widget.floor + n + 3,
            big: false,
          ),
          Class(
            nbr: widget.floor + n + 5,
            big: false,
          ),
          Class(
            nbr: widget.floor + n + 7,
            big: false,
          ),
        ],
      ));
      n = n + 8;
    }
    return Row(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 151,
      decoration: BoxDecoration(
          color: Color(globals.blue), borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(onTap: () {}, child: getWidgets()),
      ),
    );
  }
}
