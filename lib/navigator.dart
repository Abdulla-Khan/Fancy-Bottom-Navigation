import 'package:flutter/material.dart';

class NavigatorPage extends StatelessWidget {
  NavigatorPage({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 42, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
