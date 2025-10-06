import 'package:flutter/material.dart';
import 'package:myapp/Model/ShoeModel.dart';

class ProductTile extends StatelessWidget {
  final ShoeModel product;
  const ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              // spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(product.getURL, height: 250, width: 250),
                const SizedBox(height: 10),
                Text(
                  product.getDiscription,
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.getName,
                      style: const TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    Text(
                      product.getPrice,
                      style: const TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, size: 30, color: Colors.white),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.only(
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
