import 'package:flutter/material.dart';
import 'package:freeup/Background/ScheduleBackground.dart';
import 'package:freeup/ScheduleWidgets/Carrousel.dart';
import 'package:freeup/ScheduleWidgets/CarrouselHour.dart';
import 'package:freeup/ScheduleWidgets/Date.dart';

import 'HomePageWidgets/HeaderContainer.dart';
import 'ScheduleWidgets/Floors.dart';
import 'ScheduleWidgets/Refresh.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              const ScheduleBackground(image: 'assets/2.png'),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    DateD(),
                    Carrousel(),
                    CarrouselHour(),
                    Refresh(),
                    Floors(),
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
