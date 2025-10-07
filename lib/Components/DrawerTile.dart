import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const DrawerTile(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Icon(icon, color: Colors.white, size: 40),
      horizontalTitleGap: 30,
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 2),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 15),
    );
  }
}
