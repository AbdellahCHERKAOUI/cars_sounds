import 'package:flutter/material.dart';
import '../screens/carListScreen.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("CARS SOUNDS"),
        centerTitle: true,
      ),
      body: CarListScreen(),
    );
  }
}
