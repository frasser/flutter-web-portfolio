import 'package:flutter/material.dart';
import 'package:my_portfolio/my_contact.dart';
import 'package:my_portfolio/my_custom_appBar.dart';
import 'package:my_portfolio/my_footer.dart';
import 'package:my_portfolio/my_portfolios.dart';
import 'package:my_portfolio/my_skills.dart';
//import 'package:flutter_svg/avd.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  TextStyle _bodyTextStyle =
      TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: ListView(
        children: [
          Column(
            children: [
              MediaQuery.of(context).size.width > 720
                  ? My_custom_appBar()
                  : Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(40),
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
                                    color: Colors.black),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu),
                          )
                        ],
                      ),
                    ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Hello, There 👋",
                style: _bodyTextStyle,
              ),
              Text(
                "My name is juan pablo sanchez frasser",
                style: _bodyTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  "I'm an Video games programmer and mobile apps developer. I enjoy developing experiences in mobile devices for android native and hybrid apps with flutter. Also, i have acquired eperience as game designer and developer doing personal and educative proyects in unity engine for web plataforms and casual mobile games.  "
                  "\nI am passionate about technology with great creative skills and team leadership. Committed to self-taught learning and professional development."
                  " \n \nlet me show you my skills with my personal proyects.",
                  overflow: TextOverflow.visible,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Meet My Skills And Tools",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              SizedBox(height: 30),
              My_skills(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Konw My Portfolio 💼",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              My_Portfolios(),
              My_contact(),
              SizedBox(
                height: 30,
              ),
              My_footer(),
            ],
          )
        ],
      ),
    );
  }
}
