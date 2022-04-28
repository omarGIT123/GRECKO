import 'package:flutter/material.dart';
import 'package:freeup/globals.dart' as globals;
class CarrouselBuildHour extends StatelessWidget {
  final int currentHour;
  const CarrouselBuildHour({Key? key,required this.currentHour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List <String> Hour= [
      '8:00 AM',
      '9:45 AM',
      '11:30 AM',
      '13:00 PM',
      '14:00 PM',
      '15:45 PM',
    ];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(globals.blue),
      ),
      height: 69,
      width: 189,
      child: Center(
        child: Text(
          Hour[currentHour],
          style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w700,
              fontSize: 34,),
        ),
      ),
    );
  }
}
