// lib/screens/random_number_screen.dart

import 'package:flutter/material.dart';
import '../ui/random_number_service.dart';

class RandomNumberScreen extends StatefulWidget {
  final RandomNumberService service;

  const RandomNumberScreen({super.key, required this.service});

  @override
  _RandomNumberScreenState createState() => _RandomNumberScreenState();
}

class _RandomNumberScreenState extends State<RandomNumberScreen> {
  int? _randomNumber;
  double? _reducedNumber;

  void _generateAndCalculate() {
    setState(() {
      _randomNumber = widget.service.generateRandomNumber(41) + 10;
      _reducedNumber = _randomNumber! * 0.85;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Generador de Números Aleatorios',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.lightBlue.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número aleatorio: ${_randomNumber ?? '-'}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Número reducido en 15%: ${_reducedNumber?.toStringAsFixed(2) ?? '-'}',
              style: const TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _generateAndCalculate,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                backgroundColor: Colors.blueAccent,
              ),
              child: const Text(
                'Generar Número',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
