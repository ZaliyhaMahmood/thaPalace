import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';
import 'package:tha_palace_app/components/login_input.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tha_palace_app/components/login_button.dart';
import 'package:tha_palace_app/screens/home.dart';
import 'package:tha_palace_app/components/social_icon_button.dart';

class LoginTab extends StatefulWidget {
  @override
  _LoginTabState createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  bool _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 26, bottom: 27.5),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(9.5),
                ),
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
                  LoginInput(
                    icon: Icons.email,
                    text: 'Email Address',
                  ),
                  TextField(
                    obscureText: _isPasswordHidden,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        color: textColor,
                        fontSize: 15,
                      ),
                      icon: FaIcon(
                        FontAwesomeIcons.lock,
                        color: iconColor,
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _isPasswordHidden = !_isPasswordHidden;
                          });
                        },
                        child: Icon(
                          _isPasswordHidden
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.eyeSlash,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                  LoginButton(
                    buttonTitle: 'LOGIN',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                ],
              )),
          Center(
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Color(0xFF140d03),
                fontSize: 15,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 29, bottom: 17.6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                  width: 100,
                  child: Divider(
                    color: Color(0xFF525252).withOpacity(0.5),
                    height: 0.5,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 22, right: 22),
                  child: Text(
                    'Or',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xFF140d03),
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 100,
                  child: Divider(
                    color: Color(0xFF525252).withOpacity(0.5),
                    height: 0.5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialIconButton(
                  icon: FontAwesomeIcons.facebookF,
                  color: Color(0xFF00b1ff),
                ),
                SocialIconButton(
                  icon: FontAwesomeIcons.google,
                  color: Color(0xFFea245d),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
