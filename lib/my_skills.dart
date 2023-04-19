import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class My_skills extends StatelessWidget {
  double svgSize = 35;
  double svgMobileSize = 25;
  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.spaceBetween,
            children: [
              /* ( MediaQuery.of(context).size.width > 720 
                  ?svgSize = 40 
                  : svgSize = 25;),*/

              SvgPicture.asset(
                'images/unity.svg',
                width: isDesktop(context) ? svgSize : svgMobileSize,
                color: Colors.white,
              ),
              SvgPicture.asset(
                'images/cSharp.svg',
                width: isDesktop(context) ? svgSize : svgMobileSize,
              ),
              SvgPicture.asset(
                'images/js.svg',
                width: isDesktop(context) ? svgSize : svgMobileSize,
              ),
              SvgPicture.asset(
                'images/dart.svg',
                width: isDesktop(context) ? svgSize : svgMobileSize,
              ),
              SvgPicture.asset(
                'images/kotlin.svg',
                width: isDesktop(context) ? svgSize : svgMobileSize,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: isDesktop(context)
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                'images/android.svg',
                width: isDesktop(context) ? svgSize : svgMobileSize,
              ),
              SvgPicture.asset(
                'images/flutter.svg',
                width: isDesktop(context) ? svgSize : svgMobileSize,
              ),
              SvgPicture.asset(
                'images/database.svg',
                width: isDesktop(context) ? svgSize : svgMobileSize,
              ),
              SvgPicture.asset(
                'images/blender.svg',
                width: isDesktop(context) ? svgSize : svgMobileSize,
              ),
              SvgPicture.asset(
                'images/git.svg',
                width: isDesktop(context) ? svgSize : svgMobileSize,
                color: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }
}
