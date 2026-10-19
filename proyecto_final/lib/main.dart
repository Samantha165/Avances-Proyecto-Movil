import 'package:flutter/material.dart';
import 'package:proyecto_final/features/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda',
      theme: ThemeData(
   
        colorScheme: .fromSeed(seedColor: Colors.pink),
        
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}


