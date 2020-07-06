import 'package:flutter/material.dart';
import 'package:gdgnajaf/school_events.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: Color(0xffF28A89),
        accentColor: Color(0xffF28A89),

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SchoolEventsScreen(),
    );
  }
}
