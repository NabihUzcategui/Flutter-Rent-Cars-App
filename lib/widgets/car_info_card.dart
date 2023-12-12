import 'package:car_rental_app/utils/extensions.dart';
import 'package:flutter/material.dart';

class CarInfoCard extends StatelessWidget {
  final String modelCar;
  final String nameCar;
  final String priceCar;
  final String imageCar;
  final double scaleCar;

  const CarInfoCard(
      {super.key,
      required this.modelCar,
      required this.nameCar,
      required this.priceCar,
      required this.imageCar,
      required this.scaleCar});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 110,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 3,
                offset: Offset(3, 4),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameCar,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                modelCar,
                style: const TextStyle(fontSize: 12),
              ),
              15.pv,
              Text(
                '\$ $priceCar /day',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              imageCar,
              scale: scaleCar,
            ),
          ),
        ),
      ],
    );
  }
}
