import 'package:flutter/material.dart';
import 'package:my_portfolio/Helper/HorizontalScroll.dart';
import 'package:my_portfolio/my_contact.dart';
import 'package:my_portfolio/my_custom_appBar.dart';
import 'package:my_portfolio/my_footer.dart';
import 'package:my_portfolio/my_portfolios.dart';
import 'package:my_portfolio/my_skills.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_svg/avd.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      scrollBehavior: MyCustomScroll(),
    ));

class MyApp extends StatelessWidget {
  final TextStyle _bodyTextStyle =
      const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.mail_outline),
        elevation: 10.0,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        onPressed: () {
          _contact();
        },
      ),
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          /*Container(
            color: Colors.amber,
            width: double.infinity,
            height: double.infinity,
            /*decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/back.jpeg"), 
                    fit: BoxFit.cover)),*/
          ),*/
          Column(
            children: [
              Container(
                width: screenWidth,
                height: isDesktop(context) ? 620 : 820,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/back.jpeg"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    isDesktop(context)
                        ? My_custom_appBar()
                        : Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            margin: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 60),
                            height: 25,
                            width: screenWidth,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "frasser",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.menu),
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                    const SizedBox(
                      height: 10,
                    ),
                    isDesktop(context)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  right: 20,
                                  left: 20,
                                ),
                                child: const CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/new2.png"),
                                  radius: 70,
                                ),
                              ),
                              SizedBox(
                                  width: screenWidth * 0.5,
                                  child: Column(
                                    children: const [
                                      Text("Hello, There. ",
                                          style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text("I'm juan frasser 👋",
                                          style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.yellow)),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "I'm an Video games programmer and mobile apps developer. I enjoy developing experiences in mobile devices for android native and hybrid apps with flutter. Also, i have acquired eperience as game designer and developer doing personal and educative proyects in unity engine for web plataforms and casual mobile games.  "
                                        "\nI am passionate about technology with great creative skills and team leadership. Committed to self-taught learning and professional development.",
                                        overflow: TextOverflow.clip,
                                        softWrap: true,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            color: Colors.white),
                                      ),
                                    ],
                                  )),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: screenWidth * 0.8,
                                  child: Column(
                                    children: const [
                                      Text("Hello, There. ",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text("I'm juan frasser👋",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.yellow)),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage("images/new2.png"),
                                        radius: 40,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "I'm an Video games programmer and mobile apps developer. I enjoy developing experiences in mobile devices for android native and hybrid apps with flutter. Also, i have acquired eperience as game designer and developer doing personal and educative proyects in unity engine for web plataforms and casual mobile games.  "
                                        "\nI am passionate about technology with great creative skills and team leadership. Committed to self-taught learning and professional development.",
                                        overflow: TextOverflow.clip,
                                        softWrap: true,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.white),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      color: Colors.black12.withOpacity(0.2),
                      height: 145,
                      //margin: EdgeInsets.symmetric(horizontal: 60),
                      child: Padding(
                        padding: isDesktop(context)
                            ? const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 100)
                            : const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                        child: isDesktop(context)
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "SKILLS"
                                      "\nAND"
                                      "\nTOOLS",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          decoration: TextDecoration.underline,
                                          decorationThickness: 1.85,
                                          decorationColor: Colors.amber),
                                    ),
                                  ),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: My_skills(),
                                  )),
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "SKILLS AND TOOLS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 1.85,
                                        decorationColor: Colors.amber),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.all(.0),
                                    child: My_skills(),
                                  ))
                                ],
                              ),
                      ),
                    )
                  ],
                ),
              ),
              /*Text(
                "KNOW MY WORK 💼",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),*/
              Container(
                  width: screenWidth,
                  height: 530,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/back.jpeg"),
                          fit: BoxFit.cover)),
                  child: Column(children: [
                    Stack(
                      children: [
                        Container(
                          color: Colors.black.withOpacity(0.0),
                          height: 400,
                        ),
                        Container(
                          //color: Colors.yellow.withOpacity(0.2),
                          height: 530,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.5),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.5),
                                ],
                                stops: const [
                                  0.01,
                                  0.2,
                                  0.3,
                                  0.35,
                                  0.4,
                                  0.45,
                                  0.5,
                                  0.8
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                        ),
                        My_Portfolios(),
                        //BuildCard(),
                      ],
                    ),
                  ])),
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/back.jpeg"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          color: Colors.black.withOpacity(0.0),
                          height: 400,
                        ),
                        Container(
                          //color: Colors.yellow.withOpacity(0.2),
                          height: 400,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(0.5),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.3),
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                                stops: const [
                                  0.01,
                                  0.2,
                                  0.3,
                                  0.5,
                                  0.8
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                        ),
                        My_contact(),
                      ],
                    ),
                    My_footer(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

void _contact() async {
  final Uri _url = Uri.parse('mailto:frazzer_1004@hotmail.com');
  if (await canLaunchUrl(_url)) {
    await launchUrl(_url);
  } else {
    throw 'Could not send message $_url';
  }
}
