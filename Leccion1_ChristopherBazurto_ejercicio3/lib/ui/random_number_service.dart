// lib/services/random_number_service.dart

import 'dart:math';

class RandomNumberService {
  final Random _random = Random();

  int generateRandomNumber(int max) {
    return _random.nextInt(max + 1);
  }

  double calculatePercentage(int number, double percentage) {
    return number * (1 + percentage / 100);
  }
}
