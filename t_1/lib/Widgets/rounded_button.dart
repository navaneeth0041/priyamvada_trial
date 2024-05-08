import 'package:flutter/material.dart';
import 'package:t_1/Constants/Colors.dart';

class CircularButton extends StatelessWidget {
  final String text;
  const CircularButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
    style: ElevatedButton.styleFrom(backgroundColor: AppColors.blackColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
    
    ), child: Text(text, style: const TextStyle(color: AppColors.whiteColor, fontWeight: FontWeight.bold, fontSize: 20),),
    
    );
  }
}