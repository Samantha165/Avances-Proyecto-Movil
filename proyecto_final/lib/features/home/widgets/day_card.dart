

import 'package:flutter/material.dart';
import 'package:proyecto_final/features/home/models/day.dart';
import 'package:proyecto_final/features/details/screens/detail_screen.dart';
class DayCard  extends StatelessWidget{

final Day day ;
const DayCard({super.key, required this.day});


  @override
  Widget build(BuildContext context) {
   
return Card(
elevation: 4,
margin: EdgeInsets.symmetric(vertical: 10.0),
child:GestureDetector(
  onTap: (){
        Navigator.push(context, 
        MaterialPageRoute(
          builder: (context) => DetailScreen(date : day)
           ));
      },



child: Padding(
  padding: EdgeInsets.all(12.0),
  child: Row(
  
   crossAxisAlignment: CrossAxisAlignment.center,
   
    children: [
      
        Column(
          
          children: [
              Text(day.dayNumber.toString(), style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text(day.month)
          ],
        ),

      SizedBox(width: 20,),
        Column(
            children: [
            
        for (var currentTask in day.dayTaskList)
        Text(" . ${currentTask.title}", style: TextStyle(color: currentTask.taskColor, fontWeight: FontWeight.bold, fontSize: 14),),

            ],

        )
    ],
  ),
  ),
),
);

  }




  
}