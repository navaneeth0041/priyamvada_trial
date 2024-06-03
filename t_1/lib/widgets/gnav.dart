import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomGNav extends StatelessWidget {
  const CustomGNav({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey, // Specify border color here
            width: .5, // Specify border width here
          ),
        ),
      ),
      child:const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: GNav(
          backgroundColor: Colors.white,
          color: Colors.black,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.black,
          gap: 8,
          padding: EdgeInsets.all(10),
           duration: Duration(milliseconds: 200),
          tabs: [
            GButton(icon: Icons.home_filled, text: 'Home'),
            GButton(icon: Icons.library_books_rounded, text: 'Library'),
            GButton(icon: Icons.person, text: 'Profile'),
          ],
        ),
      ),
    );
  }
}
