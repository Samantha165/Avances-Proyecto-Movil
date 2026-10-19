

import 'package:proyecto_final/features/add/screens/add_screen.dart';
import 'package:proyecto_final/features/details/widgets/add_card.dart';

import 'package:proyecto_final/features/details/widgets/interactive_task_card.dart';
import 'package:proyecto_final/features/home/models/day.dart';
import 'package:flutter/material.dart';


class DetailScreen extends StatelessWidget{


final Day date;

const DetailScreen({super.key, required this.date});


@override
Widget build(BuildContext context){

return Scaffold(
appBar: AppBar(title: Text("Detalles"),),
body: Padding(
  padding: EdgeInsets.all(16.0),
  child: Column(

    children: [

      Text(date.dayNumber.toString(), style: TextStyle(fontSize: 30, fontWeight: FontWeight(30)),),
          Text(date.month, style: TextStyle(fontSize: 15),),
          Text("Lunes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
      
      //DateCard(day: date),
      SizedBox(height: 12,),

      Expanded(
        child: ListView.builder(
          itemCount: date.dayTaskList.length,
          itemBuilder: (context, index){
            final currentTask = date.dayTaskList[index];

            return InteractiveTaskCard(
             task: currentTask);
          }
          
          )
        
          
        ),

      
    ],
  ),

),
floatingActionButton: FloatingActionButton(

  child: const Icon(Icons.add),
  onPressed: () => Navigator.push(context, 
        MaterialPageRoute(
          builder: (context) => AddScreen(key : key)
           ))
)
);

}


}