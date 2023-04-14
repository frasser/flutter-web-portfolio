import 'package:flutter/material.dart';
import 'package:my_portfolio/Helper/game.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';

class Games extends StatelessWidget {
  List<Game> dataGames = [
    Game(
        "ASTRAL PROJECTION",
        "images/viaje.jpeg",
        "3D",
        "ADVENTURE",
        "An astral experience becomes dangerous when a boy gets caught up in the journey by taking 'Yagé'",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/"),
    Game(
        "HAKUNA MATATA",
        "images/way.jpeg",
        "2D",
        "SURVIVE",
        "A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/"),
    Game(
        "Way back",
        "images/sentinel.jpeg",
        "3D",
        "HORROR",
        "A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/"),
    Game(
        "HIUNTING TALES",
        "images/way.jpeg",
        "3D",
        "exploration",
        "A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/"),
    Game(
        "HAKUNA",
        "images/sentinel.jpeg",
        "3D",
        "HORROR",
        "A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/"),
    Game(
        "HAKUNA MATATA",
        "images/way.jpeg",
        "2D",
        "SURVIVE",
        "A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/"),
  ];

  Widget _buildCardItem(BuildContext context, int index) {
    Game game = dataGames[index];
    double svgSize = 35;
    return Container(
        margin: const EdgeInsets.only(top: 10),
        width: 350,
        height: 450,
        color: Colors.black12,
        child: Align(
          alignment: const Alignment(0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(game.imagePath),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.transparent,
                    //alignment: Axis.vertical
                    //margin: EdgeInsets.only(top: -10),

                    child: Align(
                      alignment: const Alignment(-0.9, -1.5),
                      child: Text(
                        game.title,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
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
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Chip(
                        backgroundColor: Colors.green,
                        label: Text(game.type),
                        labelStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                        backgroundColor: Colors.green,
                        label: Text(game.type2),
                        labelStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  game.description,
                  style: const TextStyle(
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
                        uri: Uri.parse(game.git),
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
                        uri: Uri.parse(game.itch),
                        builder: (context, followLink) => MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: followLink,
                                child: SvgPicture.asset(
                                  'images/it.svg',
                                  width: svgSize,
                                  //color: Colors.white,
                                ),
                              ),
                            )),
                    Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(game.steam),
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
                        uri: Uri.parse(game.apple),
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
                        uri: Uri.parse(game.play),
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

  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();
    return Column(
      children: [
        Expanded(
          child: ScrollSnapList(
            margin: EdgeInsets.only(top: 40),
            itemBuilder: _buildCardItem,
            dynamicItemSize: true,
            itemCount: dataGames.length,
            itemSize: 350,
            initialIndex: 2,
            reverse: true,
            onItemFocus: (index) {},
            // physics: AlwaysScrollableScrollPhysics(),
            // controller: _controller,
            scrollDirection: Axis.horizontal,
            /*child: Row(
                children: [
                  BuildCard(),
                  SizedBox(width: 20),
                  BuildCard(),
                  SizedBox(width: 20),
                  BuildCard(),
                  SizedBox(width: 20),
                  BuildCard(),
                  SizedBox(width: 20),
                ],
              )*/
          ),
        ),
      ],
    );
  }
}
