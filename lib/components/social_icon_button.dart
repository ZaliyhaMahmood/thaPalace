import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;

  SocialIconButton({@required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
        //   color: Colors.red,
      ),
      child: RawMaterialButton(
        onPressed: () {},
        shape: CircleBorder(),
        fillColor: Colors.white,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        //  color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: FaIcon(
            icon,
            color: color,
            size: 30,
          ),
        ),
      ),
    );
  }
}
