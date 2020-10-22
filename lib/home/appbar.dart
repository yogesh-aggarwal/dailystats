import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends PreferredSize {
  final double height = 150;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      padding: EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Hello",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  height: 1.1,
                ),
              ),
              Text(
                "Anna",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  height: 1.1,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
                Icon(FontAwesomeIcons.solidBell),
              ],
            ),
          )
        ],
      ),
    );
  }
}
