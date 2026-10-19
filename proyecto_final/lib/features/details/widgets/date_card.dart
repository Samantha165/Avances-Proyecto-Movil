

import 'package:flutter/material.dart';
import 'package:proyecto_final/features/home/models/day.dart';

class DateCard  extends StatelessWidget{
final Day day;

  const DateCard ({super.key, required this.day});

  @override
Widget build(BuildContext context){

return Card(

      color: Colors.white,
      margin: EdgeInsets.only(bottom: 15.0),
      child: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(day.dayNumber.toString(), style: TextStyle(fontSize: 30, fontWeight: FontWeight(30)),),
          Text(day.month, style: TextStyle(fontSize: 15),),
          Text("Lunes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
        ],
      ),
      
      
      )

);

}
}