import 'package:flutter/material.dart';
import 'Home.dart';
import 'Schedule.dart';
import 'Welcome.dart';
void main() => runApp(MaterialApp(title: 'start',initialRoute: '/Welcome',routes: {
  '/Welcome': (context) => const Welcome(),
  '/Home': (context) => const Home(),
  '/Place' : (context) => const Schedule(),
 // '/'  : (context) => const Welcome(),

},));



