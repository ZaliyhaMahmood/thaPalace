import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';

class LoginButton extends StatelessWidget {
  LoginButton({@required this.onTap, this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 36, right: 38.5, bottom: 10),
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              spreadRadius: 0,
              blurRadius: 6,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
          color: mainColor,
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //  color: kBottomContainerColour,

        // height: kBottomContainerHeight,
      ),
    );
  }
}
