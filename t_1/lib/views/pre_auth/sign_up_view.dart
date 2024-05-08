import 'package:flutter/material.dart';
import 'package:t_1/resources/colors.dart';
import 'package:t_1/widgets/pass_form_field.dart';
import 'package:t_1/widgets/rounded_button.dart';
import 'package:t_1/widgets/text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final bool _isPasswordVisible = false;
  final bool _isConfirmPassVisible = false;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Appcolors.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 100,
                  left: 0,
                  right: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Form(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const TxtFormField(
                                  hintText: "Email",
                                  obscureText: false,
                                ),
                                const TxtFormField(
                                  hintText: "Name",
                                  obscureText: false,
                                ),
                                PassFormField(
                                  hintText: "Password",
                                  obscureText: !_isPasswordVisible,
                                  suffixIcon: _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                PassFormField(
                                  hintText: "Confirm Password",
                                  obscureText: !_isConfirmPassVisible,
                                  suffixIcon: _isConfirmPassVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CheckboxListTile(
                              value: _isChecked,
                              onChanged: (value) {
                                setState(() {
                                  _isChecked = value!;
                                });
                              },
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
                                  width: MediaQuery.of(context).size.width * 0.90,
                                  child: const CircularButton(text: "Sign Up"),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Have an Account?",
                                    style: TextStyle(color: Appcolors.blackColor),
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    "Login",
                                    style: TextStyle(color: Appcolors.termsColor),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
