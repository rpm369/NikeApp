import 'package:flutter/material.dart';
import 'package:myapp/Components/BottomNavBar.dart';
import 'package:myapp/Components/MyDrawer.dart';
import 'package:myapp/Data/Database.dart';
import 'package:myapp/Model/CartModel.dart';
import 'package:myapp/Pages/CartPage.dart';
import 'package:myapp/Pages/ShopPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List pages;

  int index = 0;

  @override
  void initState() {
    Database db = Database.getInstance;
    CartModel cart = CartModel.getInstance;
    pages = [ShopPage(db, cart), CartPage(cart)];
  }

  void changePage(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Builder(
            builder: (newContext) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(newContext).openDrawer();
                },
                icon: Icon(Icons.menu_open, color: Colors.black, size: 30),
                style: IconButton.styleFrom(overlayColor: Colors.transparent),
              );
            },
          ),
        ),
      ),
      drawer: Mydrawer(),
      body: pages[index],
      bottomNavigationBar: BottomNavBar(changePage),
    );
  }
}
