


import 'package:proyecto_final/features/home/models/task.dart';

class Day {

  int dayNumber;
  String month="";
  String weekday="";
  List<Task> dayTaskList;
  List<Task> pendingTasks;

Day({required this.dayNumber, required this.month, required this.dayTaskList, required this.weekday, required this.pendingTasks});

}