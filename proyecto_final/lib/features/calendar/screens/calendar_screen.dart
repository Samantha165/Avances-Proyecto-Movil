
import 'package:flutter/material.dart';
import 'package:proyecto_final/features/calendar/widgets/interactive_calendar.dart';



class CalendarScreen extends StatefulWidget {


  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen>{



  @override
  Widget build(BuildContext context) {
  
  return Scaffold(
    appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Calendario"),
    ),
    body: Column(
      children: [
        Expanded(child: InteractiveCalendar())
      ],
    ),

  );
  }



} 