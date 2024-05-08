import 'package:flutter/material.dart';
import 'package:t_1/Constants/Colors.dart';
import 'package:t_1/widgets/pass_form_field.dart';
import 'package:t_1/widgets/rounded_button.dart';
import 'package:t_1/widgets/text_form_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final bool _isPasswordVisible=false;
  void somthing() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 9,
            right: MediaQuery.of(context).size.width / 9),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 10),
                child: Center(child: Image.asset("Assets/appLogo.png")),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 22,
              ),
              const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              const TxtFormField(hintText: "Username or email", obscureText: false),
              SizedBox(
                height: MediaQuery.of(context).size.height / 42,
              ),
              PassFormField(hintText: "Password", obscureText: !_isPasswordVisible,suffixIcon: _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,),
              SizedBox(
                height: MediaQuery.of(context).size.height / 52,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password ?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              const SizedBox(
                width: double.infinity,
                child: CircularButton(text: "Login"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 55,
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New User ?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Text(
                          " Create Account",
                          style: TextStyle(color: AppColors.termsColor),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
