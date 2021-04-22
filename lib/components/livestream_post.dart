import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';
import 'package:tha_palace_app/custom_icons_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LiveStreamPost extends StatelessWidget {
  const LiveStreamPost({
    Key key,
  }) : super(key: key);

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
                backgroundImage: AssetImage('images/index.jpg'),
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
                        'NTA Kaduna',
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
                        visible: true,
                        child: Icon(
                          CustomIcons.icon_material_verified_user,
                          size: 12,
                          color: mainColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '1h',
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
            padding: EdgeInsets.only(right: 64, top: 5.5),
            child: Text(
              'Livestream - NTA.ng - Breaking News, Nigeria, Africa, Worldwide',
              style: TextStyle(fontSize: 18, color: Color(0xFF101010)),
            ),
          ),
          Container(
            //  padding: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              //  color: Colors.black,
            ),
            child: Stack(children: [
              Container(
                // margin: EdgeInsets.only(top: 24),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/capture_1.jpg'),
                )),
              ),
              Positioned(
                top: 30,
                left: 10,
                child: Container(
                  height: 25,
                  width: 57.5,
                  decoration: BoxDecoration(
                    color: Color(0xFF797d80),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.remove_red_eye_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        ' 50',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 30,
                right: 10,
                child: Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFf44238),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(
                    child: Text(
                      'Live',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
            ]),
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
