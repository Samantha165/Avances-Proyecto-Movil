

import 'package:flutter/material.dart';
import 'package:proyecto_final/features/calendar/screens/calendar_screen.dart';
import 'package:proyecto_final/features/home/models/day.dart';
import 'package:proyecto_final/features/home/models/task.dart';
import 'package:proyecto_final/features/home/widgets/day_card.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> diasSemana = [
  'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb', 'Dom'
];


List<Task> dayTaskList =[
  Task(title: "Tarea de cripto para mañana", description: "Hacer la página 2 y 3", taskColor: Colors.blue),
  Task(title: "Tarea de cripto", description: "Hacer la página 2 y 3", taskColor: Colors.purple),
  Task(title: "Tarea de cripto", description: "Hacer la página 2 y 3", taskColor: Colors.green),
  Task(title: "Tarea de cripto", description: "Hacer la página 2 y 3", taskColor: Colors.pink),
  Task(title: "Tarea de cripto", description: "Hacer la página 2 y 3", taskColor: Colors.blue),
  
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Home'),

        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => CalendarScreen()
                ),
              );
            },
            icon: const Icon(Icons.calendar_month), 
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: 7,
          itemBuilder: (context, index){

            final DateTime realDate = DateTime.now().add(Duration(days: index));
            String diaSemana = diasSemana[realDate.weekday - 1];
            
        
            final int dayNumber = realDate.day;
           final String monthName = DateFormat('MMM').format(realDate);
           final List<Task> pendingTasks = dayTaskList.where((task) => !(task.isCompleted ?? false)).toList();
       
            //final String dateKey = DateFormat('yyyy-MM-dd').format(realDate);
            final currentDay = Day(
              dayNumber: dayNumber,
              month: monthName,
              weekday:diaSemana,
              dayTaskList: dayTaskList,
              pendingTasks: pendingTasks,
            );

            return DayCard(day: currentDay);

          }
          
          ),
        )
      
    );
  }
}