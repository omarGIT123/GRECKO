import 'package:flutter/material.dart';
import 'package:freeup/Schedule.dart';

import '../../Home.dart';
import 'SidebarTexts.dart';

class SidebarWidgets extends StatelessWidget {
  const SidebarWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset('assets/home.png'),
            SideBarText(txt: 'Home', context1: context, route: const Home()),
          ],
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 32),
          child: Row(
            children: [
              Image.asset('assets/cal.png'),
              SideBarText(txt: 'Today s Schedule', context1: context, route: const Schedule()),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 32),
          child: Row(
            children: [
              Image.asset('assets/Group.png'),
              SideBarText(txt: 'All Schedules', context1: context, route: const Schedule()),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 32),
          child: Row(
            children: [
              Image.asset('assets/frame.png'),
              SideBarText(txt: 'Quick Schedule', context1: context, route: const Home()),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 32),
          child: Row(
            children: [
              Image.asset('assets/akar.png'),
              SideBarText(txt: 'Settings', context1: context, route: const Home()),
            ],
          ),
        )
      ],
    );
  }
}
