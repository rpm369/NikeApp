import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/Logos/NikeLogo.png", height: 280, width: 280),
            Text(
              "Just Do It !",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            SizedBox(height: 30),
            Text(
              "This App is build by Gautam Jangid so you can trust the platform",
              style: TextStyle(color: Colors.grey, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/HomePage");
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  "SHOP NOW",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
