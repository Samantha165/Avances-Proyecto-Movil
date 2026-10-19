
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:proyecto_final/features/home/models/task.dart';

class InteractiveTaskCard  extends StatefulWidget{

final Task task;

const InteractiveTaskCard ({super.key, required this.task});

@override
State<InteractiveTaskCard> createState() => _InteractiveTaskCardState();


}

class _InteractiveTaskCardState extends State<InteractiveTaskCard>{
bool isCompleted = false;
  @override
  Widget build(BuildContext context) {
   

    return Card(
   color: isCompleted ? const Color.fromARGB(255, 228, 249, 224) : Colors.white ,
    elevation: 4,
    margin: EdgeInsets.all(8.0),
    child: ListTile(

      title: Text(widget.task.title, style: TextStyle(color: widget.task.taskColor),),
      trailing: IconButton(
        onPressed: (){
          setState(() {
            isCompleted = !isCompleted;
          });
          }, 
        icon: Icon(
        isCompleted ? Icons.check : Icons.radio_button_unchecked, 
        color: isCompleted ? Colors.green : Colors.grey,)),
    )

    );

  }

  
}
