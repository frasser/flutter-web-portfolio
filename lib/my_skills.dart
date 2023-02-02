import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class My_skills extends StatelessWidget {
  double svgSize = 25;
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        /* ( MediaQuery.of(context).size.width > 720 
            ?svgSize = 40 
            : svgSize = 25;),*/

        SvgPicture.asset(
          'images/unity.svg',
          width: svgSize,
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
        ),
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
      ],
    );
  }
}
