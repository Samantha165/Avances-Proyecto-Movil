

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
child:InkWell(
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
      SizedBox(
        width: 55,
        child: 
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text(day.dayNumber.toString().padLeft(2, '0'), style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 4,),
                  Text(day.month),
              
              SizedBox(height: 2,),
              Text(day.weekday, style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ),

      SizedBox(width: 20,),
        Column(
            children: [
            
        for (var currentTask in day.pendingTasks)
        
        if(currentTask.isCompleted == false)
        Text(" . ${currentTask.title}", style: TextStyle(color: currentTask.taskColor, fontWeight: FontWeight.bold, fontSize: 16),),
        
            ],

        )
    ],
  ),
  ),
),
);

  }




  
}