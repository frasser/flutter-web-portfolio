import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class My_skills extends StatelessWidget {
  double svgSize = 35;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /* ( MediaQuery.of(context).size.width > 720 
                  ?svgSize = 40 
                  : svgSize = 25;),*/

              SvgPicture.asset(
                'images/unity.svg',
                width: svgSize,
                color: Colors.white,
              ),
              SvgPicture.asset(
                'images/cSharp.svg',
                width: svgSize,
              ),
              SvgPicture.asset(
                'images/js.svg',
                width: svgSize,
              ),
              SvgPicture.asset(
                'images/dart.svg',
                width: svgSize,
              ),
              SvgPicture.asset(
                'images/kotlin.svg',
                width: svgSize,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                'images/android.svg',
                width: svgSize,
              ),
              SvgPicture.asset(
                'images/flutter.svg',
                width: svgSize,
              ),
              SvgPicture.asset(
                'images/database.svg',
                width: svgSize,
              ),
              SvgPicture.asset(
                'images/blender.svg',
                width: svgSize,
              ),
              SvgPicture.asset(
                'images/git.svg',
                width: svgSize,
                color: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }
}
