import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChaptersTab extends StatelessWidget {
  const ChaptersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("18 Chapters"),
              Text("Download all"),
              SizedBox()
            ],
          )
        ],
      ),
    );
  }
}