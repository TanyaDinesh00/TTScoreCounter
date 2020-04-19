import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF1D1E33),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 27, color: Colors.white),
        ),
      ),
    );
  }
}
