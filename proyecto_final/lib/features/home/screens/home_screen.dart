

import 'package:flutter/material.dart';
import 'package:proyecto_final/features/home/models/day.dart';
import 'package:proyecto_final/features/home/models/task.dart';
import 'package:proyecto_final/features/home/widgets/day_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 


 List<Day> weekList =[
Day(dayNumber: 01, month: "Sep", dayTaskList: [

  Task(title: "Tarea de cripto", description: "Hacer la página 2 y 3", taskColor: Colors.blue),
Task(title: "Tarea de PC1", description: "Hacer resumen del libro de UML", taskColor: Colors.deepPurple),
]),
Day(dayNumber: 02, month: "Sep", dayTaskList: [

  Task(title: "Tarea de Movil", description: "Terminar el ejercicio de hoy", taskColor: Colors.pink),
Task(title: "Tarea de redes", description: "Hacer tarea de packet", taskColor: Colors.deepOrange),
])
 ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: weekList.length,
          itemBuilder: (context, index){
            final currentDay = weekList[index];

            return DayCard(day: currentDay);

          }
          
          ),
        )
      
    );
  }
}