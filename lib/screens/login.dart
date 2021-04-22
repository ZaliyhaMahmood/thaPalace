import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tha_palace_app/custom_icons_icons.dart';
import 'package:tha_palace_app/constants.dart';
import 'package:tha_palace_app/components/tab_container.dart';
import 'package:tha_palace_app/components/login_tab.dart';
import 'package:tha_palace_app/components/signUp_tab.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.only(left: 33.5, right: 33, bottom: 10),
                child: SafeArea(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 50,
                          bottom: 28,
                        ),
                        child: Icon(
                          CustomIcons.group_846,
                          size: 50,
                          color: mainColor,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
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
                        child: TabBar(
                          unselectedLabelColor: mainColor,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: mainColor),
                          tabs: [
                            Tab(
                              child: TabContainer(
                                text: 'Existing',
                              ),
                            ),
                            Tab(
                              child: TabContainer(
                                text: 'New',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        //  flex: 7,
                        child: TabBarView(
                          //  physics: BouncingScrollPhysics(),
                          children: [
                            LoginTab(),
                            SignUpTab(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
