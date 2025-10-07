import 'package:flutter/material.dart';
import 'package:nikeapp/Data/Database.dart';
import 'package:nikeapp/Model/ShoeModel.dart';

class CartTile extends StatelessWidget {
  final ShoeModel product;
  final Database db;
  final VoidCallback changeState;
  const CartTile(this.db, this.product, this.changeState);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                spacing: 20,
                children: [
                  Image.asset(product.getURL, height: 60, width: 60),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.getName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 23),
                        ),
                        Text(
                          product.getPrice,
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () async {
                await db.removeProduct(product);
                changeState();
              },
              icon: Icon(Icons.delete, color: Colors.grey, size: 30),
              style: IconButton.styleFrom(overlayColor: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}
