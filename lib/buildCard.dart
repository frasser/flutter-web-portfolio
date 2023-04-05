
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';

class BuildCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String type;
  final String type2;
  final String git;
  final String itch;
  final String steam;
  final String apple;
  final String play;

  BuildCard(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.type,
      required this.type2,
      required this.git,
      required this.itch,
      required this.steam,
      required this.apple,
      required this.play});

  double svgSize = 35;
  @override
  Widget build(BuildContext context) {
    //Game game =
    return Container(
        margin: const EdgeInsets.only(top: 10),
        width: 350,
        height: 450,
        color: Colors.transparent,
        child: Align(
          alignment: const Alignment(0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset("images/sentinel.jpeg"),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.transparent,
                    //alignment: Axis.vertical
                    //margin: EdgeInsets.only(top: -10),

                    child: const Align(
                      alignment: Alignment(-0.9, -1.5),
                      child: Text(
                        "NAME GAME",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Chip(
                        backgroundColor: Colors.green,
                        label: Text('3D'),
                        labelStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                        backgroundColor: Colors.grey.withBlue(100),
                        label: const Text('Horror'),
                        labelStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  "A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://frasser.itch.io/'),
                        builder: (context, followLink) => MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: followLink,
                                child: SvgPicture.asset(
                                  'images/git3.svg',
                                  width: svgSize,
                                  //color: Colors.white,
                                ),
                              ),
                            )),
                    Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://frasser.itch.io/'),
                        builder: (context, followLink) => MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: followLink,
                                child: SvgPicture.asset(
                                  'images/itch2.svg',
                                  width: svgSize,
                                  //color: Colors.white,
                                ),
                              ),
                            )),
                    Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://frasser.itch.io/'),
                        builder: (context, followLink) => MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: followLink,
                                child: SvgPicture.asset(
                                  'images/steam.svg',
                                  width: svgSize,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                    Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://frasser.itch.io/'),
                        builder: (context, followLink) => MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: followLink,
                                child: SvgPicture.asset(
                                  'images/appleStore.svg',
                                  width: svgSize,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                    Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://frasser.itch.io/'),
                        builder: (context, followLink) => MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: followLink,
                                child: SvgPicture.asset(
                                  'images/play.svg',
                                  width: svgSize,
                                  //color: Colors.white,
                                ),
                              ),
                            ))

                    /*  Link(
                      target:
                      child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'images/unity.svg',
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),*/
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
