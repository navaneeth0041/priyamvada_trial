import 'package:flutter/material.dart';


class BuildDot extends StatelessWidget {
  const BuildDot({
    super.key,
    required int currentIndex,
    required this.index,
  }) : _currentIndex = currentIndex;

  final int _currentIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
      Color dotColor = _currentIndex == index
          ? Colors.black 
          : Colors.grey; 

      return Container(
        height: 10,
        width: _currentIndex == index ? 25 : 10,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: dotColor,
        ),
      );
}
}

