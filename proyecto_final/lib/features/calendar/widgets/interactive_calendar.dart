import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class InteractiveCalendar extends StatefulWidget {
  const InteractiveCalendar({super.key});

  @override
  State<InteractiveCalendar> createState() => _InteractiveCalendarState();
}

class _InteractiveCalendarState extends State<InteractiveCalendar> {
  DateTime? _selectedDay;
  DateTime? _focusedDay;



  @override
  Widget build(BuildContext context) {
    return TableCalendar(
       shouldFillViewport: true,
      firstDay: DateTime.utc(2025, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
      availableCalendarFormats: const {
  CalendarFormat.month: 'Month', // O CalendarFormat.twoWeeks si prefieres esa vista fija
},
      
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay; // update `_focusedDay` here as well
        });
      },


    );
  }
}