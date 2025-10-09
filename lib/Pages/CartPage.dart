import 'package:flutter/material.dart';
import 'package:nikeapp/Components/CartTile.dart';
import 'package:nikeapp/Data/Database.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void changeState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Database db = Provider.of<Database>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Cart", style: TextStyle(color: Colors.black, fontSize: 30)),
          Expanded(
            child: ListView.builder(
              itemCount: db.getCartLength,
              itemBuilder: (context, index) {
                return CartTile(db.getShoeModelAt(index), changeState);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            alignment: Alignment.center,
            child: Text(
              "\$ ${db.getCartTotal}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                letterSpacing: 1,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
