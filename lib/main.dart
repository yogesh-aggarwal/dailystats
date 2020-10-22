import 'package:dailystats/home/activity.dart';
import 'package:flutter/material.dart';

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
        fontFamily: "Poppins"
      ),
      home: DailyStats(),
    );
  }
}

class DailyStats extends StatefulWidget {
  @override
  _DailyStatsState createState() => _DailyStatsState();
}

class _DailyStatsState extends State<DailyStats> {
  final List<Widget> pages = [HomeActivity()];
  final PageController pageController = PageController(initialPage: 0);

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
        ),
      ),
    );
  }
}
