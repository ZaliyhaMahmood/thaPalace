import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';
import 'package:tha_palace_app/custom_icons_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostContainer extends StatelessWidget {
  final String avatarImageUrl;
  final String userName;
  final String time;
  final String postText;
  final String postImage;
  final bool isVerified;

  PostContainer(
      {@required this.avatarImageUrl,
        this.userName,
        this.time,
        this.postImage,
        this.postText,
        this.isVerified});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(left: 11.5, top: 10, right: 9, bottom: 11),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(avatarImageUrl),
                radius: 21,
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          //       color: fontColor,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Visibility(
                        visible: isVerified,
                        child: Icon(
                          CustomIcons.icon_material_verified_user,
                          size: 12,
                          color: mainColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(left: 180, right: 15),
                    child: Icon(
                      Icons.more_horiz,
                      color: homeIconColor,
                    )),
              )
            ],
          ),
          Container(
            height: 33.5,
            // width: 285,
            padding: EdgeInsets.only(right: 64, top: 5.5),
            child: Text(
              postText,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18, color: Color(0xFF101010)),
            ),
          ),
          Container(
            // margin: EdgeInsets.only(top: 24),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(postImage),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.heart,
                      color: Color(0xFF525252),
                    ),
                    SizedBox(width: 5),
                    Text('1.4k Likes'),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.mode_comment_outlined,
                      color: Color(0xFF525252),
                    ),
                    SizedBox(width: 5),
                    Text('1.4k comments'),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: Color(0xFF525252),
                      // color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text('133 shares'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}