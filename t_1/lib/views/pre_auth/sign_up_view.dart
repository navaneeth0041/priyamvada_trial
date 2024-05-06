import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:t_1/resources/colors.dart';
import 'package:t_1/widgets/rounded_button.dart';
import 'package:t_1/widgets/text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      resizeToAvoidBottomInset:true,
      backgroundColor: Appcolors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_sharp),
      ),
      body: __buildUI(context),

    );
  }

  Widget __buildUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text('Sign Up',
                    style: TextStyle(
                      fontSize: 30,
                    ),),
                  ),
                  Form(child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          
                          children: [
                            TxtFormField(hintText: "Email", obscureText: false,),
                            TxtFormField(hintText: "Name",obscureText: false,),
                            TxtFormField(hintText: "Password",obscureText: true,suffixIcon: Icons.visibility_off_outlined,),
                            TxtFormField(hintText: "Confirm Password",obscureText: true,suffixIcon: Icons.visibility_off_outlined,),
                          ],
                        ),
                      ),

                          Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CheckboxListTile(
                            value: false,
                            onChanged:(value) => {},
                            title: const Text(
                              'I agree to Priyamvada',
                              style: TextStyle(color: Appcolors.blackColor),
                            ),
                            subtitle: const Text(
                              'Terms of Service - Privacy Policy',
                              style: TextStyle(color: Appcolors.termsColor),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 45,
                              width: MediaQuery.of(context).size.width*0.90,
                              child:const CircularButton(text: "Sign Up"),),
                          ),
                          const SizedBox(
                            height: 51,
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Have an Account?", style: TextStyle(color: Appcolors.blackColor),),
                              SizedBox(width: 2,),
                              Text("Login", style: TextStyle(color: Appcolors.termsColor),)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}