
import 'package:flutter/material.dart';
class Task {

String title ="";
String description="";
Color taskColor;
bool isCompleted = false;


Task({required this.title, required this.description, required this.taskColor,  this.isCompleted = false});


}