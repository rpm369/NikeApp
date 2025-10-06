import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.black, fontSize: 20),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        fillColor: Colors.white30,
        filled: true,
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
        suffixIcon: Icon(Icons.search, color: Colors.grey, size: 30),
        contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
      ),
    );
  }
}
