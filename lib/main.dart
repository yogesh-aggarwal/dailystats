import 'package:dailystats/home/activity.dart';
import 'package:dailystats/newTask/activity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Poppins"),
      home: DailyStats(),
    );
  }
}

class DailyStats extends StatefulWidget {
  @override
  _DailyStatsState createState() => _DailyStatsState();
}

class _DailyStatsState extends State<DailyStats> {
  int currentPageIndex = 0;
  final List<Widget> pages = [
    HomeActivity(),
    NewTaskActivity(),
    HomeActivity(),
    Container(),
  ];
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          physics: new NeverScrollableScrollPhysics(),
          controller: pageController,
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return pages[index];
          },
          onPageChanged: (value) {
            setState(() {
              currentPageIndex = value;
              pageController.jumpToPage(currentPageIndex);
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        backgroundColor: Colors.white,
        currentIndex: currentPageIndex,
        onTap: (value) {
          setState(() {
            currentPageIndex = value;
            pageController.jumpToPage(currentPageIndex);
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.tasks,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.chartPie),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cog),
            label: "",
          ),
        ],
      ),
    );
  }
}
