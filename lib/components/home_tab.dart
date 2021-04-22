import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';
import 'package:tha_palace_app/custom_icons_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 2.5), // changes position of shadow
            ),
          ],
        ),
        child: TabBar(
            unselectedLabelColor: homeIconColor,
            labelColor: mainColor,
            indicator: BoxDecoration(
                // borderRadius: BorderRadius.circular(50),
                //    color: mainColor
                ),
            tabs: [
              Tab(
                icon: Icon(
                  CustomIcons.group_998,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(CustomIcons.icon_material_ondemand_video),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.users),
              ),
              Tab(
                icon: Icon(CustomIcons.group_986),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.heart),
              ),
              Tab(
                icon: Icon(CustomIcons.icon_awesome_podcast),
              ),
            ],
            onTap: (index) {}),
      ),
    );
  }
}
