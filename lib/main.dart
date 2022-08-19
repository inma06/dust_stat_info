import 'package:flutter/material.dart';
import 'package:weather_app/src/screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower',
      ),
      home: const HomeScreen(),
    ),
  );
}
