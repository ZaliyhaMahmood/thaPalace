import 'package:flutter/material.dart';
import 'package:tha_palace_app/constants.dart';

class SuggestedFollowerContainer extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String sub;

  SuggestedFollowerContainer({@required this.name, this.imageUrl, this.sub});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        top: 15,
        right: 13,
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xFFd5d5d5), width: 0.5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            spreadRadius: 0,
            blurRadius: 0.5,
            offset: Offset(0, 0.5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 100),
            child: Icon(
              Icons.clear,
              size: 26,
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          Container(
            height: 123,

            //  margin: EdgeInsets.only(bottom: 8),
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(imageUrl),
                  radius: 35,
                ),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  sub,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(
                  top: 13.5,
                ),
                height: 27,
                width: 112,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                  color: mainColor,
                ),
                child: Center(
                  child: Text(
                    'Follow Back',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
