import 'package:flutter/material.dart';
import 'package:t_1/widgets/pass_form_field.dart';
import 'package:t_1/widgets/rounded_button.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});
  void functiontobecalled(){

  }
  @override
  Widget build(BuildContext context) {
    final double screenHieght=MediaQuery.of(context).size.height;
    final double screenWidth=MediaQuery.of(context).size.width;
    TextStyle passwordStyle=const TextStyle(fontFamily: 'Nunito',fontSize: 24,fontWeight: FontWeight.w300);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back_ios_new_outlined)),
        title:const Text("Change password",style: TextStyle(fontFamily: "Nunito",fontWeight: FontWeight.w500,fontSize: 29),),
        centerTitle: true,
        ),
      body: Padding(
        padding: EdgeInsets.only(left: screenWidth /25,right: screenWidth/25 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHieght /10,),
            Text("Enter old password",style: passwordStyle,),
            const PassFormField(hintText: "", obscureText: true),
            Text("Enter new password",style: passwordStyle,),
            const PassFormField(hintText: "", obscureText: true),
            Text("Confirm old password",style: passwordStyle,),
            const PassFormField(hintText: "", obscureText: true),
            const Align(
              alignment: Alignment.bottomCenter,
              child: CircularButton(text: "Save"),
            )
          ],
        ),
      ),
    );
  }
}