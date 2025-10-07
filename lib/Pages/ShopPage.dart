import 'package:flutter/material.dart';
import 'package:nikeapp/Components/ProductTile.dart';
import 'package:nikeapp/Components/SearchBox.dart';
import 'package:nikeapp/Data/Database.dart';
import 'package:nikeapp/Model/ShoeModel.dart';

class ShopPage extends StatefulWidget {
  Database db;
  List<ShoeModel>? list;
  ShopPage(this.db) {
    this.list = db.getInventory;
  }

  @override
  State<ShopPage> createState() => ShopPageState();
}

class ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 15,
                bottom: 40,
              ),
              child: SearchBox(),
            ),
            const Text(
              "Everyone flies! Some fly longer than others",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 35,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
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
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.list!.length,
                itemBuilder: (context, index) {
                  return ProductTile(widget.db, widget.list![index]);
                },
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
