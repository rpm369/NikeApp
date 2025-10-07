import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int) changePage;
  const BottomNavBar(this.changePage);

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: changePage,
      tabMargin: EdgeInsetsGeometry.only(bottom: 10),
      mainAxisAlignment: MainAxisAlignment.center,
      padding: EdgeInsetsGeometry.all(22),
      duration: Duration(milliseconds: 400),
      iconSize: 30,
      tabBackgroundColor: Colors.white,
      activeColor: Colors.black,
      color: Colors.grey,
      tabBorderRadius: 10,
      textStyle: TextStyle(letterSpacing: 1),
      gap: 2,
      tabs: [
        GButton(icon: Icons.home, text: "Home"),
        GButton(icon: Icons.shopping_bag, text: "Cart"),
      ],
    );
  }
}
