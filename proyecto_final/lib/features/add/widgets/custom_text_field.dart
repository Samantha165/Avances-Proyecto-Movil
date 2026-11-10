
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
final TextEditingController titleController;
final TextEditingController descriptionController;
final Color titleColor;
final VoidCallback onTakePhoto;
final VoidCallback onPickPhoto;
final List<String> files;




const CustomTextField ({super.key, required this.titleController, required this.descriptionController, required this.titleColor, 
required this.onTakePhoto, required this.onPickPhoto, required this.files,});


@override
  Widget build(BuildContext context) {

 return Container(
  height: 235,
  padding: EdgeInsets.all(16),
  decoration:BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: Colors.white,
     border: Border.all(color: Colors.grey.shade400)
  ),
  child: Column(
    
 children: [
  
 TextField(
    controller: titleController,
    decoration: InputDecoration(
    label: Text('Titulo'),
    
      fillColor: Colors.white,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    
    ),
style: TextStyle(color: titleColor),
   ),
    Divider(
      color: Colors.grey.shade400, 
      thickness: 1,               
      height: 10,                  
    ),

    Expanded(
      child: 

   TextField(
    expands: true,
    maxLines: null,
    minLines: null,
    controller: descriptionController,
    decoration: InputDecoration(
     label: Text('Descripción'),
    focusedBorder: InputBorder.none,
     enabledBorder: InputBorder.none,
      fillColor: Colors.white,
      
    ),

    ),
    


    
    ),

    Row(
children: [
   IconButton(
          onPressed: onTakePhoto,    // por ahora vacío
          icon: Icon(Icons.camera_alt_outlined, color: Colors.grey.shade500),
        ),
        IconButton(
          onPressed: onPickPhoto,    // por ahora vacío
          icon: Icon(Icons.photo_outlined, color: Colors.grey.shade500),
        ),
],
    )
 ]

 
  )
 );
  }  
}