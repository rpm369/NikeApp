import 'package:flutter/material.dart';
import 'package:nikeapp/Components/BottomNavBar.dart';
import 'package:nikeapp/Components/MyDrawer.dart';
import 'package:nikeapp/Pages/CartPage.dart';
import 'package:nikeapp/Pages/ShopPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  void changePage(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  List? pages;

  @override
  void initState() {
    pages = [ShopPage(), CartPage()];
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
      body: pages![index],
      bottomNavigationBar: BottomNavBar(changePage),
    );
  }
}
