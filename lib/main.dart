import 'package:flutter/material.dart';
import 'package:mobile_computing_assignment/assignment_4/bascet_ball_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BascetBallApp(),
    );
  }
}
