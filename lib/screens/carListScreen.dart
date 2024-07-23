import 'package:flutter/material.dart';
import 'package:cars_sounds/models/car.dart';
import 'package:cars_sounds/widget/CarListItem.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(name: 'Mercedes AMG', imagePath: 'assets/images/amg.jpeg', soundPath: 'images/amg.mp3'),
    Car(name: 'Range Rover', imagePath: 'assets/images/rover.jpeg', soundPath: 'images/rover.m4a'),
    Car(name: 'Rolls Royce', imagePath: 'assets/images/royce.jpeg', soundPath: 'images/rover.m4a'),
    Car(name: 'Porsche', imagePath: 'assets/images/porsche.jpeg', soundPath: 'images/porsche.m4a'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: (cars.length / 2).ceil(),
        itemBuilder: (context, index) {
          int firstCarIndex = index * 2;
          int secondCarIndex = firstCarIndex + 1;

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (firstCarIndex < cars.length)
                Expanded(child: CarListItem(car: cars[firstCarIndex])),
              if (secondCarIndex < cars.length)
                Expanded(child: CarListItem(car: cars[secondCarIndex])),
            ],
          );
        },
      ),
    );
  }
}
