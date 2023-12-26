import 'package:flutter/material.dart';
import 'package:konnect/screens/measure_widget_size.dart';
import 'package:konnect/screens/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
      // home: PixelPerfect(),
      // home: MeasureWidgetSize(),
    );
  }
}
