import 'package:flutter/material.dart';
import 'package:myapp/Components/CartTile.dart';
import 'package:myapp/Model/CartModel.dart';
import 'package:myapp/Model/ShoeModel.dart';

class CartPage extends StatefulWidget {
  CartModel cart;
  CartPage(this.cart);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void deleteProduct(ShoeModel product) {
    setState(() {
      widget.cart.getCart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Cart", style: TextStyle(color: Colors.black, fontSize: 30)),
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.getCart.length,
              itemBuilder: (context, index) {
                return CartTile(widget.cart.getCart[index], deleteProduct);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            alignment: Alignment.center,
            child: Text(
              "\$ PAY",
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
