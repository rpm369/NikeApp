import 'package:flutter/material.dart';

class ConformDialog extends StatelessWidget {
  String productName;
  ConformDialog(this.productName);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0),
      content: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          border: BoxBorder.all(color: Colors.white, width: 0.5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Logos/ok.gif", height: 100, width: 100),
            Text(
              productName,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const Text(
              "Product Added successfully !",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
