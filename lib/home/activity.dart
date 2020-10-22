import 'package:dailystats/home/appbar.dart';
import 'package:dailystats/home/todo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActionCard extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;

  ActionCard({@required this.name, @required this.icon, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Color(0xFFEEEEEE),
            offset: Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Icon(
              icon,
              color: color,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Column(
        children: [
          GridView.count(
            padding: EdgeInsets.all(20),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: 1.3,
            children: <Widget>[
              ActionCard(
                name: "Home",
                icon: FontAwesomeIcons.home,
                color: Colors.purple,
              ),
              ActionCard(
                name: "Study",
                icon: FontAwesomeIcons.graduationCap,
                color: Colors.blue,
              ),
              ActionCard(
                name: "Work",
                icon: FontAwesomeIcons.briefcase,
                color: Colors.orange,
              ),
              ActionCard(
                name: "Habits",
                icon: FontAwesomeIcons.dumbbell,
                color: Colors.red,
              ),
            ],
          ),
          HomeTodoWiget(),
        ],
      ),
    );
  }
}
