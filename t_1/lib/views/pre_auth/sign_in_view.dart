import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              TextField(
                controller: null,
                decoration: InputDecoration(
                    hintText: "Username or Email",
                    // errorText: 'Username is required',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 42,
              ),
              TextField(
                controller: null,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    // errorText: 'Password is required',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    suffix: Image.asset(
                      "Assets/Remove red eye.png",
                      height: MediaQuery.of(context).size.height / 40,
                      width: MediaQuery.of(context).size.width / 15,
                    )),
              ),
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: somthing,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
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
                          style: TextStyle(color: Color(0xFF1A99F5)),
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
