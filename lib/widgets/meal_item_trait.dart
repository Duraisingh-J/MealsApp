import 'package:flutter/material.dart';

class MealItemTrait extends StatelessWidget {
  const MealItemTrait(this.icon, this.label, {super.key});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icon, color: Colors.white,),
      SizedBox(width: 2,),
      Text(label, style: TextStyle(color: Colors.white),)

    ],);
  }
}
