import 'package:flutter/material.dart';

class TabContainer extends StatelessWidget {
  final String text;

  TabContainer({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      //   width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Montserrat',
            // color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
