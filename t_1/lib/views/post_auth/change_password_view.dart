import 'package:flutter/material.dart';
import 'package:t_1/widgets/pass_form_field.dart';
import 'package:t_1/widgets/rounded_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  void functiontobecalled() {}

  @override
  Widget build(BuildContext context) {
    bool isPasswordVisible = true;
    final double screenHieght = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Text(
          "Change password",
          style: TextStyle(
              fontFamily: "Nunito", fontWeight: FontWeight.w500, fontSize: 29),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: screenWidth / 25, right: screenWidth / 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter old password",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            PassFormField(
                hintText: "Password",
                obscureText: !isPasswordVisible,
                suffixIcon: isPasswordVisible
                    ? Icons.visibility
                    // ignore: dead_code
                    : Icons.visibility_off,
              ),
            Text(
              "Enter new password",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
             PassFormField(
                hintText: "Password",
                obscureText: !isPasswordVisible,
                suffixIcon: isPasswordVisible
                    ? Icons.visibility
                    // ignore: dead_code
                    : Icons.visibility_off,
             ),
            Text(
              "Confirm old password",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            PassFormField(
              hintText: "",
              obscureText: !isPasswordVisible,
              suffixIcon: isPasswordVisible
                    ? Icons.visibility
                    // ignore: dead_code
                    : Icons.visibility_off,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            bottom: screenHieght / 25,
            left: screenWidth / 25,
            right: screenWidth / 25),
        child: const SizedBox(
            width: double.infinity, child: CircularButton(text: "Save")),
      ),
    );
  }
}
