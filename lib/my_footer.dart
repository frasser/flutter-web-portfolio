import 'package:flutter/material.dart';

class My_footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 30,
      decoration: const BoxDecoration(color: Colors.deepPurple),
      child: const Text(",Build by @jpfrazzer",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.normal)),
    );
  }
}
