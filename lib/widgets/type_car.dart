import 'package:flutter/material.dart';

class TypeCar extends StatelessWidget {
  final String typeCar0;
  final String typeCar1;
  final String typeCar2;
  final String typeCar3;
  final String typeCar4;

  const TypeCar({
    super.key,
    required this.typeCar0,
    required this.typeCar1,
    required this.typeCar2,
    required this.typeCar3,
    required this.typeCar4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(typeCar0, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(typeCar1, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(typeCar2, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(typeCar3, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(typeCar4, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
