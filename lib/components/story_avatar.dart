import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';

class StoryAvatar extends StatelessWidget {
  final String userName;
  final String imageUrl;

  StoryAvatar({@required this.userName, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12.5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: notificationColor, width: 2.5)),
            child: CircleAvatar(
              backgroundImage: AssetImage(imageUrl),
              radius: 25,
            ),
          ),
          SizedBox(height: 7),
          Container(child: Text(userName)),
        ],
      ),
    );
  }
}
