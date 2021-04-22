import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';

class LoginInput extends StatelessWidget {
  final String text;
  final IconData icon;
  // final bool isVisible;

  LoginInput({@required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      //  visible: isVisible,
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: iconColor,
          ),
          border: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(
            fontFamily: 'Montserrat',
            color: textColor,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
