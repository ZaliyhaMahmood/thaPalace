import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';
import 'package:tha_palace_app/components/login_input.dart';
import 'package:tha_palace_app/components/divider_box.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tha_palace_app/components/login_button.dart';
import 'package:tha_palace_app/screens/home.dart';

class SignUpTab extends StatefulWidget {
  @override
  _SignUpTabState createState() => _SignUpTabState();
}

class _SignUpTabState extends State<SignUpTab> {
  bool _isPasswordHidden = true;
  bool _isConfirmationHidden = true;

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
                    icon: Icons.person_outline,
                    text: 'Name',
                  ),
                  DividerBox(),
                  IntlPhoneField(
                    showDropdownIcon: false,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        color: textColor,
                        fontSize: 15,
                      ),
                    ),
                    initialCountryCode: 'NG',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                  DividerBox(),
                  LoginInput(
                    icon: Icons.email,
                    text: 'Email Address',
                  ),
                  DividerBox(),
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
                  DividerBox(),
                  TextField(
                    obscureText: _isConfirmationHidden,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirmation',
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
                            _isConfirmationHidden = !_isConfirmationHidden;
                          });
                        },
                        child: Icon(
                          _isConfirmationHidden
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.eyeSlash,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                  DividerBox(),
                  LoginButton(
                    buttonTitle: 'LOGIN',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
