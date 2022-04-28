import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:freeup/ScheduleWidgets/CarrouselBuild.dart';
import 'package:freeup/globals.dart' as globals;

import 'Date.dart';
import 'Subfloorwidgets/EachFloor.dart';
import 'Subfloorwidgets/Groundfloor.dart';
import 'Subfloorwidgets/subEachfloor/Class.dart';

_CarrouselState carrouselS = _CarrouselState();

class Carrousel extends StatefulWidget {
  const Carrousel({Key? key}) : super(key: key);

  @override
  _CarrouselState createState() {
    carrouselS = _CarrouselState();
    return carrouselS;
  }
}

class _CarrouselState extends State<Carrousel> {
  final CarouselController _CarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(top: 48),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsetsDirectional.only(end: 24, bottom: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Swipe for more',
                  style: TextStyle(color: Color(globals.blue), fontSize: 14),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: Color(globals.blue),
                )
              ],
            ),
          ),
          CarouselSlider.builder(
            carouselController: _CarouselController,
            options: CarouselOptions(
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  globals.thisPage = index;

                  dateState.setState(() {
                    dateState.refresh();
                  });
                  globals.currentDay = globals.thisPage;
                });
                eachfloors.setState(() {});
                grounds.setState(() {});
                classS.setState(() {});
              },
              viewportFraction: 0.22,
              autoPlayCurve: Curves.fastOutSlowIn,
              height: 91,
              initialPage: globals.currentDay,
            ),
            itemCount: globals.DAY.length,
            itemBuilder: (BuildContext context, index, pageViewIndex) =>
                InkWell(
                    borderRadius: BorderRadius.circular(51),
                    onTap: () {
                      _CarouselController.animateToPage(index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    },
                    child: CarrouselBuild(
                      index: index,
                      thispage: globals.thisPage,
                    )),
          )
        ],
      ),
    );
  }
}
