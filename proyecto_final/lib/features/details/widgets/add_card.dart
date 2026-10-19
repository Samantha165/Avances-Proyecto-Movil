


import 'package:flutter/material.dart';

class AddCard  extends StatelessWidget{

  const AddCard({super.key});

@override
  Widget build(BuildContext context) {
    

    return Card(
    color: Colors.white,
    elevation: 4,
     margin: EdgeInsets.all(8.0),
     child: ListTile(
    title: Text("+ Agregar nueva tarea", style: TextStyle(color: Colors.grey),),
     )

    );
    
  }

}