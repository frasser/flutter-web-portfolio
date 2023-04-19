import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:url_launcher/link.dart';
import 'package:my_portfolio/Helper/app.dart';

class Apps extends StatelessWidget {
  List<App> dataApps = [
    App(
        "GUBOX STORE",
        "images/gubox_shop.png",
        "web shop and landing page for IoT products developed in react with gatsby js",
        "https://github.com/frasser/gubox-store",
        "",
        "",
        ""),
    App(
        "POWCAST",
        "images/powcast.png",
        "Podcast app integrated with  AudioBoom api",
        "https://github.com/frasser/powcast",
        "",
        "",
        ""),
    App(
        "GUBI APP",
        "images/gubi_app.png",
        "hibrid web view in android that contain gubi gps web,an app for tracking and manage gps devices based on leaflet open source library and here maps",
        "https://github.com/frasser/gubi",
        "",
        "",
        ""),
    App(
        "MASTER TEACH",
        "images/master_teach.png",
        "Android app to register and find freelancer teachers",
        "https://github.com/frasser/MasterTeach",
        "",
        "",
        ""),
    App(
        "CIRUS BANK",
        "images/cirus_bank.png",
        "Android app to simulate bank transactions",
        "https://github.com/frasser/Banca_Movil",
        "",
        "",
        ""),
  ];

  Widget _buildCardItem(BuildContext context, int index) {
    App app = dataApps[index];
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
                  Image.asset(app.imagePath),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.transparent,
                    //alignment: Axis.vertical
                    //margin: EdgeInsets.only(top: -10),

                    child: Align(
                      alignment: const Alignment(-0.9, -1.4),
                      child: Text(
                        app.title,
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
                              ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  app.description,
                  style: isMobile(context)
                      ? const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        )
                      : const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (app.git != "")
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(app.git),
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
                    if (app.link != "")
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(app.link),
                          builder: (context, followLink) => MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: followLink,
                                  child: SvgPicture.asset(
                                    'images/itch2.svg',
                                    width: isMobile(context)
                                        ? svgMobileSize
                                        : svgSize,
                                    //color: Colors.white,
                                  ),
                                ),
                              )),
                    if (app.apple != "")
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(app.apple),
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
                    if (app.play != "")
                      Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(app.play),
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
            margin: EdgeInsets.only(top: 30),
            itemBuilder: _buildCardItem,
            dynamicItemSize: true,
            itemCount: dataApps.length,
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
