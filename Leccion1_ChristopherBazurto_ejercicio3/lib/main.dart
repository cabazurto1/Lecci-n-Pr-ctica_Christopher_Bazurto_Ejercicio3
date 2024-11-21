// lib/main.dart

import 'package:flutter/material.dart';
import 'ui/random_number_service.dart';
import 'logica/random_number_screen.dart';

void main() {
  runApp(const RandomNumberApp());
}

class RandomNumberApp extends StatelessWidget {
  const RandomNumberApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomNumberScreen(service: RandomNumberService()),
    );
  }
}
