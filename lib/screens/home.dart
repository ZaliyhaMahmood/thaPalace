import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';
import 'package:tha_palace_app/custom_icons_icons.dart';
import 'package:tha_palace_app/components/livestream_post.dart';
import 'package:tha_palace_app/components/livestream_separated.dart';
import 'package:tha_palace_app/components/suggested_followers.dart';
import 'package:tha_palace_app/components/post_container.dart';
import 'package:tha_palace_app/components/your_story.dart';
import 'package:tha_palace_app/components/story_avatar.dart';
import 'package:tha_palace_app/components/home_tab.dart';
import 'package:tha_palace_app/components/notification_badge.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scrollViewColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              Icon(
                CustomIcons.logo,
                size: 30,
                color: mainColor,
              ),
            ],
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.1),
            ),
            child: Icon(
              Icons.search,
              color: homeIconColor,
              size: 20,
            ),
          ),
          SizedBox(width: 15),
          NotificationBadge(),
          SizedBox(width: 3),
          Container(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.menu,
              color: homeIconColor,
              size: 20,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              HomeTab(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: shadowColor,
                              spreadRadius: 0,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        // color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              //  height: 150,
                              padding: EdgeInsets.only(
                                  left: 15.5, right: 15, top: 14, bottom: 5),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('images/guyson.jpg'),
                                    radius: 25,
                                  ),
                                  SizedBox(height: 11),
                                  Text('Profile'),
                                ],
                              ),
                            ),
                            SizedBox(width: 11),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                //   height: 150,
                                padding: EdgeInsets.only(
                                    right: 10.5, top: 10, bottom: 7),
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    YourStory(),
                                    StoryAvatar(
                                      userName: 'Angela Yu',
                                      imageUrl: 'images/whats_app_image.jpg',
                                    ),
                                    StoryAvatar(
                                      userName: 'Abraham',
                                      imageUrl: 'images/screenshot_1.jpg',
                                    ),
                                    StoryAvatar(
                                      userName: 'Queen',
                                      imageUrl: 'images/screenshot_0.jpg',
                                    ),
                                    StoryAvatar(
                                      userName: 'Angela Yu',
                                      imageUrl: 'images/whats_app_image.jpg',
                                    ),
                                    StoryAvatar(
                                      userName: 'Abraham',
                                      imageUrl: 'images/screenshot_1.jpg',
                                    ),
                                    StoryAvatar(
                                      userName: 'Queen',
                                      imageUrl: 'images/screenshot_0.jpg',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PostContainer(
                        avatarImageUrl: 'images/filtered4.jpg',
                        userName: 'Auwal rg',
                        time: 'Yesterday at 10:10PM',
                        postText:
                            'Don\'t ever be afraid to show who you really are '
                            'because as long...',
                        postImage: 'images/filtered4.jpg',
                        isVerified: true,
                      ),
                      Container(
                        height: 290,
                        padding: EdgeInsets.only(
                            left: 11.5, top: 10, right: 9, bottom: 19.5),
                        margin: EdgeInsets.only(top: 13),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: shadowColor,
                              spreadRadius: 0,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Suggested for You',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color(0xFF101010)),
                                ),
                                Icon(
                                  Icons.more_horiz,
                                  color: homeIconColor,
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                //   height: 150,
                                padding: EdgeInsets.only(
                                  right: 10.5,
                                  top: 10,
                                ),
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    SuggestedFollowerContainer(
                                      name: 'Almohad',
                                      imageUrl: 'images/filtered.jpg',
                                      sub: 'New to ThaPalace',
                                    ),
                                    SuggestedFollowerContainer(
                                      name: 'Mubarak Ibrahim',
                                      imageUrl: 'images/filtered1.jpg',
                                      sub: 'Followed by Onus_Oche + 1 more',
                                    ),
                                    SuggestedFollowerContainer(
                                      name: 'Auwal rg',
                                      imageUrl: 'images/filtered4.jpg',
                                      sub: 'New to ThaPalace',
                                    ),
                                    SuggestedFollowerContainer(
                                      name: 'Almohad',
                                      imageUrl: 'images/filtered.jpg',
                                      sub: 'New to ThaPalace',
                                    ),
                                    SuggestedFollowerContainer(
                                      name: 'Mubarak Ibrahim',
                                      imageUrl: 'images/filtered1.jpg',
                                      sub: 'Followed by Onus_Oche + 1 more',
                                    ),
                                    SuggestedFollowerContainer(
                                      name: 'Auwal rg',
                                      imageUrl: 'images/filtered4.jpg',
                                      sub: 'New to ThaPalace',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PostContainer(
                        avatarImageUrl: 'images/filtered3.jpg',
                        userName: 'Merry Jon',
                        time: 'Kaduna Nigeria  Yesterday at 10:10PM',
                        postText:
                            'Don\'t ever be afraid to show who you really are '
                            'because as long...',
                        postImage: 'images/filtered2.jpg',
                        isVerified: false,
                      ),
                      LiveStreamPost(),
                      LiveStreamSeparated(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: mainColor,
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
