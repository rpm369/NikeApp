import 'package:flutter/material.dart';
import 'package:myapp/Components/ProductTile.dart';
import 'package:myapp/Components/SearchBox.dart';
import 'package:myapp/Components/SideDrawer.dart';
import 'package:myapp/Model/ShoeModel.dart';

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<ShoeModel> shoesList = [
    ShoeModel(
      "assets/ShoeImages/Shoe1.png",
      "Nike Air Jordan",
      "Very good Shoe",
      400,
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(backgroundColor: Colors.transparent),
      drawer: SideDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(
              left: 25,
              right: 25,
              top: 15,
              bottom: 40,
            ),
            child: SearchBox(),
          ),
          Text(
            "Everyone flies ! Some fly longer than others",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(
              left: 25,
              right: 25,
              top: 35,
              bottom: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsGeometry.only(left: 25),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [ProductTile(product: shoesList[0])],
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            height: 30,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people, color: Colors.black, size: 30),
            label: "A",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black, size: 30),
            label: "B",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black, size: 30),
            label: "C",
          ),
        ],
      ),
    );
  }
}
