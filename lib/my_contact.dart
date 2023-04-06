import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';

class My_contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;

    return Center(
      child: Container(
          margin: EdgeInsets.only(top: 60),
          width: isDesktop(context) ? screenWidth * 0.5 : screenWidth * 0.8,
          //MediaQuery.of(context).size.width * 0.5,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Colors.black12,
              //border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "¿ Do You Like What I Do ?",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 25)),
                    overlayColor: MaterialStateProperty.all(
                        Colors.amber.withOpacity(0.2)),
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)))),
                onPressed: () {},
                child: const Text(
                  "Contact Me",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.black12,
                width: double.infinity,
                height: 50,
                child: Row(
                  mainAxisAlignment: isDesktop(context)
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: isDesktop(context)
                          ? const EdgeInsets.symmetric(horizontal: 10)
                          : const EdgeInsets.symmetric(horizontal: 0),
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse("game.play"),
                          builder: (context, followLink) => MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: followLink,
                                  child: SvgPicture.asset(
                                    'images/itch2.svg',
                                    width: 35,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                    ),
                    Padding(
                      padding: isDesktop(context)
                          ? const EdgeInsets.symmetric(horizontal: 10)
                          : const EdgeInsets.symmetric(horizontal: 0),
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse("game.play"),
                          builder: (context, followLink) => MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: followLink,
                                  child: SvgPicture.asset(
                                    'images/linkedin.svg',
                                    width: 35,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                    ),
                    Padding(
                      padding: isDesktop(context)
                          ? const EdgeInsets.symmetric(horizontal: 10)
                          : const EdgeInsets.symmetric(horizontal: 0),
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse("game.play"),
                          builder: (context, followLink) => MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: followLink,
                                  child: SvgPicture.asset(
                                    'images/twitter.svg',
                                    width: 35,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                    )
                  ],
                ),
              )
            ],
          )

          //child: Text("¿ Do You Like What I Do ?"),
          ),
    );
  }
}
