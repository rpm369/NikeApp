import 'package:flutter/material.dart';
import 'package:nikeapp/Components/DrawerTile.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Image.asset(
                  "assets/Logos/NikeLogo.png",
                  height: 200,
                  width: 200,
                  color: Colors.white,
                ),
              ),
              DrawerTile(Icons.home, "Home"),
              SizedBox(height: 10),
              DrawerTile(Icons.shopping_bag, "Cart"),
              SizedBox(height: 10),
              DrawerTile(Icons.info, "About"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: DrawerTile(Icons.logout, "Log out"),
          ),
        ],
      ),
    );
  }
}
