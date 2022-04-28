import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:freeup/ScheduleWidgets/SubWidgetsCarrouselHour/CarrouselBuildHour.dart';
import 'package:freeup/ScheduleWidgets/Subfloorwidgets/subEachfloor/Class.dart';
import 'package:freeup/globals.dart' as globals;

import 'Subfloorwidgets/EachFloor.dart';
import 'Subfloorwidgets/Groundfloor.dart';

class CarrouselHour extends StatelessWidget {
  const CarrouselHour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late int _currentHour;

    List<String> Hour = [
      '8:00 AM',
      '9:45 AM',
      '11:30 AM',
      '13:00 PM',
      '14:00 PM',
      '15:45 PM',
    ];
    return Container(
      padding: const EdgeInsetsDirectional.only(top: 55),
      width: 363,
      height: 186,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsetsDirectional.only(start: 32),
            alignment: Alignment.topLeft,
            child: Text(
              'Pick a specific hour',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(globals.blue)),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 32, start: 37),
                  child: Row(
                    children: [
                      RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          'Slide',
                          style: TextStyle(
                            color: Color(globals.blue),
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.arrow_upward,
                            size: 30,
                            color: Color(globals.blue),
                          ),
                          Icon(
                            Icons.arrow_downward,
                            size: 30,
                            color: Color(globals.blue),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 169,
                  height: 131,
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        _currentHour = index;
                        eachfloors.setState(() {});
                        grounds.setState(() {});
                        classS.setState(() {});
                      },
                      scrollDirection: Axis.vertical,
                      viewportFraction: 0.6,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      height: 131,
                      initialPage: 0,
                    ),
                    itemCount: Hour.length,
                    itemBuilder: (BuildContext context, index, pageViewIndex) =>
                        CarrouselBuildHour(currentHour: index),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
