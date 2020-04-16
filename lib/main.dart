import 'package:flutter/material.dart';
import 'package:pageview_builder/getting_started_screen.dart';

void main() => runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: MyApp(),));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GettingStartedScreen();
  }
}
