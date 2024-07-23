import 'package:flutter/material.dart';
import 'package:cars_sounds/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => const Homepage(),
      },
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      initialRoute: "/home",
    );
  }
}
