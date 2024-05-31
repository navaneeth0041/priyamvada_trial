import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:t_1/views/post_auth/change_password_view.dart';
// import 'package:t_1/views/pre_auth/onboarding_view.dart';
import 'package:t_1/resources/theme.dart';
import 'package:t_1/views/post_auth/chapter_screen.dart';
// import 'package:t_1/views/post_auth/chapter_screen.dart';
// import 'package:t_1/views/pre_auth/sign_up_view.dart';
// import 'package:t_1/views/tabs/chapters_tab_view.dart';

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
      theme: themeData,
      home:const ChapterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
