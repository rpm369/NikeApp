import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.warning, color: Colors.red, size: 50),
            Text(
              "Invalid Route Page !",
              style: TextStyle(color: Colors.red, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
