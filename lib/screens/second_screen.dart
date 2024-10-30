import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const path = '/second';
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second screen'),
      ),
    );
  }
}
