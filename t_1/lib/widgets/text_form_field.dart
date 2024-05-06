import 'package:flutter/material.dart';
import 'package:t_1/resources/colors.dart';

class TxtFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData? suffixIcon;

   const TxtFormField({super.key, required this.hintText, required this.obscureText, this.suffixIcon});


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: MediaQuery.of(context).size.width ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
           obscureText:obscureText,
          decoration: InputDecoration(
            suffixIcon:Icon(suffixIcon) ,
            hintText: hintText,
            hintStyle: const TextStyle(color: Appcolors.hintColor),
           
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)),
          ),
        ),
      ),

    );
  }

}