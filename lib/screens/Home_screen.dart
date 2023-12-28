// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:car_rental_app/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://aishlatino.com/wp-content/uploads/2021/11/que-tipo-de-persona-te-gustaria-ser-730x411-SP.jpg',
                      ),
                      radius: 25.0,
                    ),
                  )
                ],
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rent a Car',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                  ),
                ],
              ),
              10.pv,
              const _SearchBar(),
              20.pv,
              const TypeCar(
                typeCar0: 'All',
                typeCar1: 'Hatchback',
                typeCar2: 'Sedann',
                typeCar3: 'Suv',
                typeCar4: '4x4',
              ),
              20.pv,
              Expanded(
                child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        const CarInfoCard(
                          modelCar: 'Hatchback',
                          nameCar: 'Fiat Punto',
                          priceCar: '45',
                          imageCar: 'assets/hatchback2.png',
                          scaleCar: 3.0,
                        ),
                        10.pv,
                        const CarInfoCard(
                          modelCar: 'Sedan',
                          nameCar: 'Honda Civic',
                          priceCar: '75',
                          imageCar: 'assets/sedanhonda.png',
                          scaleCar: 3.0,
                        ),
                        10.pv,
                        const CarInfoCard(
                          modelCar: 'Suv',
                          nameCar: 'Mercedez GLE',
                          priceCar: '120',
                          imageCar: 'assets/bmwSuv.png',
                          scaleCar: 3.0,
                        ),
                        10.pv,
                        const CarInfoCard(
                          modelCar: '4x4',
                          nameCar: 'Grand Cherokee',
                          priceCar: '90',
                          imageCar: 'assets/Jeep4x4.png',
                          scaleCar: 3.0,
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: Colors.black54,
        hintText: 'Search a car...',
      ),
    );
  }
}
