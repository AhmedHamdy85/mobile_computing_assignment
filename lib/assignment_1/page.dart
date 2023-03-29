import 'package:flutter/material.dart';

class FirstAssignment extends StatelessWidget {
  const FirstAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'First Application',
          style: TextStyle(),
        ),
      ),
      body: const Center(
        child: Center(
          child: Text(
            'Ahmed Hamdy',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
