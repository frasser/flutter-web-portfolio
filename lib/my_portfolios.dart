import 'package:flutter/material.dart';
import 'apps.dart';
import 'games.dart';
//import 'package:scroll_snap_list/scroll_snap_list.dart';

class My_Portfolios extends StatefulWidget {
  @override
  State<My_Portfolios> createState() => _My_PortfoliosState();
}

class _My_PortfoliosState extends State<My_Portfolios>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedPage = 0;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 2, initialIndex: selectedPage, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      width: screenWidth,
      color: Colors.transparent,
      height: 530,
      padding: const EdgeInsets.all(10),
      child: Flex(
        direction: Axis.vertical,
        children: [
          TabBar(
              labelStyle: isMobile(context)
                  ? const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )
                  : const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              controller: _tabController,
              isScrollable: true,
              unselectedLabelColor: Colors.white,
              labelColor: Colors.yellow[800],
              //labelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(50)),
              tabs: const <Widget>[
                Tab(
                  text: "Video Games",
                ),
                Tab(
                  text: "Mobile Apps",
                ),
              ]),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 8, left: 8),
            child: TabBarView(
              controller: _tabController,
              children: [
                Games(),
                Apps(),
              ],
            ),
          )),

          //BuildCard()
        ],
      ),
    );
  }
}
