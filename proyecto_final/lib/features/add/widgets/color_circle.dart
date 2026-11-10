
import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget{

  final Color color;
  final bool isSelected;
    final VoidCallback onTap;
  const ColorCircle({super.key, required this.color,  this.isSelected = false, required this.onTap});


  @override
  Widget build(BuildContext context) {
     return GestureDetector(
      onTap: onTap,
      child: Container(
     
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent, 
            width: 2,
          ),
        ),
       
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }


}