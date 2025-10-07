import 'package:flutter/material.dart';
import 'package:myapp/Components/ProductTile.dart';
import 'package:myapp/Components/SearchBox.dart';
import 'package:myapp/Data/Database.dart';
import 'package:myapp/Model/CartModel.dart';

class ShopPage extends StatefulWidget {
  Database db;
  CartModel cart;
  ShopPage(this.db, this.cart);

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
                itemCount: widget.db.getProducts.length,
                itemBuilder: (context, index) {
                  return ProductTile(
                    product: widget.db.getProducts[index],
                    cart: widget.cart,
                  );
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
