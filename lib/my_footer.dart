import 'package:flutter/material.dart';

class My_footer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(color: Colors.deepPurple),
      child: Text(",Build by @jpfrazzer",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.normal)),
    );
  }
}
