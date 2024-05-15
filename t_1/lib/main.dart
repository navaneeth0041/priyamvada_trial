import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:t_1/views/post_auth/change_password_view.dart';
import 'package:t_1/views/pre_auth/onboarding_view.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const ChangePassword(),
      debugShowCheckedModeBanner: false,
    );
  }
}
