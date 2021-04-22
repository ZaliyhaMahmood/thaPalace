import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';
import 'package:tha_palace_app/custom_icons_icons.dart';

class NotificationBadge extends StatelessWidget {
  const NotificationBadge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Center(
            child: Icon(
              CustomIcons.ms_icon,
              color: homeIconColor,
              size: 20,
            ),
          ),
          Positioned(
            left: 8,
            top: 2,
            child: new Container(
              padding: EdgeInsets.all(2),
              decoration: new BoxDecoration(
                color: notificationColor,
                borderRadius: BorderRadius.circular(8),
              ),
              constraints: BoxConstraints(
                minWidth: 20,
                minHeight: 15,
              ),
              child: Text(
                '15',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
