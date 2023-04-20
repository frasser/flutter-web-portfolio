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
        "An astral experience becomes dangerous when a boy gets caught up in the journey by taking 'Yagé'. I worked as a game designer, level designer, and programmer for some mechanics.",
        "https://github.com/First-Jam-Generation-G1/Viaje-Astral-LFS.git",
        "https://bayron-david.itch.io/viaje-astral",
        "",
        "",
        ""),
    Game(
        "NO WAY BACK",
        "images/way.jpeg",
        "3D",
        "SIMULATION",
        "A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. I worked as a game designer and level designer",
        "https://github.com/frasser/g9-running-in-future",
        "https://frasser.itch.io/no-way-back",
        "",
        "",
        ""),
    Game(
        "SENTINEL EXPEDITION",
        "images/sentinel.jpeg",
        "2D",
        "SURVIVAL",
        "A trip to Sentinel Island becomes tedious when a couple of anthropologists discover an uncontacted indigenous civilization.  However, their lives will be put at risk when they discover something terrifying. ¡The tribe practices cannibalism!.I worked as a game designer and programmer for some mechanics an UI. ",
        "https://github.com/kellyes93/generationJam2",
        "https://kellyes93.itch.io/sentinel-expedition",
        "",
        "",
        ""),
    Game(
        "HUNTING TALES",
        "images/hunting.jpeg",
        "3D",
        "ADVENTURE",
        "Join Ryo on this magical adventure, a monster hunter and sets out on a mission to free villages tormented by yokais. I worked as a game designer, level designer, and programmer for some mechanics.",
        "https://github.com/Atlas-dev-sec/Hunting-Tales",
        "https://kellyes93.itch.io/hunting-tales",
        "",
        "",
        ""),
    Game(
        "ANOTHER TRIVIAL STORY",
        "images/another.jpeg",
        "VISUAL NOVEL",
        "SUSPENSE",
        "Strictly educational project that is focused on  create the story using and exploring AI generate images tools like Stable diffusion and ink for the narrative and dialogues. Based on some 'stranger things' scenes as tribute.",
        "",
        "https://frasser.itch.io/another-trivial-story",
        "",
        "",
        ""),
  ];

  Widget _buildCardItem(BuildContext context, int index) {
    Game game = dataGames[index];
    double svgSize = 35;
    double svgMobileSize = 30;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;
    return Container(
        margin: const EdgeInsets.only(top: 12),
        width: isMobile(context) ? 250 : 360,
        height: isMobile(context) ? 450 : 500,
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
                      alignment: const Alignment(-0.9, -1.4),
                      child: Text(game.title,
                          textAlign: TextAlign.right,
                          style: isMobile(context)
                              ? const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.amber,
                                )
                              : const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.amber,
                                )),
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
                          labelStyle: isMobile(context)
                              ? const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)
                              : const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                          backgroundColor: Colors.green,
                          label: Text(game.type2),
                          labelStyle: isMobile(context)
                              ? const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)
                              : const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  game.description,
                  style: isMobile(context)
                      ? const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        )
                      : const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (game.git != "")
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(game.git),
                          builder: (context, followLink) => MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: followLink,
                                  child: SvgPicture.asset(
                                    'images/git3.svg',
                                    width: isMobile(context)
                                        ? svgMobileSize
                                        : svgSize,
                                    //color: Colors.white,
                                  ),
                                ),
                              )),
                    if (game.itch != "")
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(game.itch),
                          builder: (context, followLink) => MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: followLink,
                                  child: SvgPicture.asset(
                                    'images/it.svg',
                                    width: isMobile(context)
                                        ? svgMobileSize
                                        : svgSize,
                                    //color: Colors.white,
                                  ),
                                ),
                              )),
                    if (game.steam != "")
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(game.steam),
                          builder: (context, followLink) => MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: followLink,
                                  child: SvgPicture.asset(
                                    'images/steam.svg',
                                    width: isMobile(context)
                                        ? svgMobileSize
                                        : svgSize,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                    if (game.apple != "")
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(game.apple),
                          builder: (context, followLink) => MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: followLink,
                                  child: SvgPicture.asset(
                                    'images/appleStore.svg',
                                    width: isMobile(context)
                                        ? svgMobileSize
                                        : svgSize,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                    if (game.play != "")
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(game.play),
                          builder: (context, followLink) => MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: followLink,
                                  child: SvgPicture.asset(
                                    'images/play.svg',
                                    width: isMobile(context)
                                        ? svgMobileSize
                                        : svgSize,
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
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;
    ScrollController _controller = ScrollController();
    return Column(
      children: [
        Expanded(
          child: ScrollSnapList(
            margin: EdgeInsets.only(top: 10),
            itemBuilder: _buildCardItem,
            dynamicItemSize: true,
            itemCount: dataGames.length,
            itemSize: isMobile(context) ? 250 : 360,
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
