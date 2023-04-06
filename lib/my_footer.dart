import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class My_footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int year = now.year;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 30,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Link(
        uri: Uri.parse("https://www.linkedin.com/in/juan-pablo-frasser/"),
        builder: (context, followLink) => MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: followLink,
            child: Text(' $year ,Build by Frasser',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.normal)),
          ),
        ),
      ),
    );
  }
}
