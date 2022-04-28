import 'package:flutter/material.dart';
import 'package:freeup/HomePageWidgets/MoreDetails.dart';
import 'package:freeup/Schedule.dart';

import 'Background/HomeBackground.dart';
import 'HomePageWidgets/HeaderContainer.dart';
import 'HomePageWidgets/LinearPercentage.dart';
import 'HomePageWidgets/TextAndPP.dart';
import 'HomePageWidgets/TextButtons.dart';
import 'HomePageWidgets/TextHome.dart';
import 'globals.dart' as globals;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              const HomeBackground(image: 'assets/1.png'),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsetsDirectional.only(
                          top: 131, end: 17, start: 15),
                      alignment: Alignment.center,
                      child: const TextAndPPP(),
                    ),
                    TextButtons(
                      header: 'View Today schedule',
                      guide: 'Get an overview of which  rooms re taken',
                      route: const Home(),
                      context1: context,
                    ),
                    TextButtons(
                      header: 'Find a place',
                      guide: 'Find a place for yourself or your group',
                      route: const Schedule(),
                      context1: context,
                    ),
                    Container(
                      margin:
                          const EdgeInsetsDirectional.only(start: 32, top: 41),
                      alignment: Alignment.centerLeft,
                      child: const TextHome(),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 20),
                      child: Column(
                        children: [
                          LinearPercentage(
                              percent: globals.percentGround, floor: 'Ground'),
                          LinearPercentage(
                              percent: globals.percentFirst, floor: 'First'),
                          LinearPercentage(
                              percent: globals.percentSecond, floor: 'Second'),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: 207, end: 27, bottom: 43, top: 39),
                      child: MoreDetails(),
                    )
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.topLeft, child: const HeaderContainer()),
            ],
          )),
    );
  }
}
