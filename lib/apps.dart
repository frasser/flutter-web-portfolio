import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:url_launcher/link.dart';
import 'package:my_portfolio/Helper/app.dart';

class Apps extends StatelessWidget {
  List<App> dataApps = [
    App(
        "HAKUNA",
        "images/gubi_app.png",
        "A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/"),
    App(
        "HAKUNA matata",
        "images/gubox_shop.png",
        "A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/"),
    App(
        "UNO",
        "images/gubi_app.png",
        "A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/"),
    App(
        "ABLAO",
        "images/gubox_shop.png",
        "A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie. A mini game were you can simulate the hovercraft of marty mcfly form the back to the future movie",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/",
        "https://frasser.itch.io/"),
  ];

  Widget _buildCardItem(BuildContext context, int index) {
    App app = dataApps[index];
    double svgSize = 35;
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
                  Image.asset(app.imagePath),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.transparent,
                    //alignment: Axis.vertical
                    //margin: EdgeInsets.only(top: -10),

                    child: Align(
                      alignment: const Alignment(-0.9, -1.5),
                      child: Text(
                        app.title,
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
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  app.description,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(app.git),
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
                        uri: Uri.parse(app.link),
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
                        uri: Uri.parse(app.apple),
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
                        uri: Uri.parse(app.play),
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
            itemCount: dataApps.length,
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
