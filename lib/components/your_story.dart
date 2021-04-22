import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';

class YourStory extends StatelessWidget {
  const YourStory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12.5),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: seenStoryColor, width: 2.5)),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/guyson.jpg'),
                  radius: 25,
                ),
              ),
              Positioned(
                right: 3,
                bottom: 5,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: notificationColor,
                  ),
                  constraints: BoxConstraints(
                      // minWidth: 15,
                      // minHeight: 15,
                      ),
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 7),
          Text('Your Story'),
        ],
      ),
    );
  }
}
