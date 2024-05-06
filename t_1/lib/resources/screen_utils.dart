import 'package:flutter/material.dart';

class HelperFunctions {
  static double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

static double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

}