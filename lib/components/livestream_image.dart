import 'package:flutter/material.dart';

class LivestreamImage extends StatelessWidget {
  const LivestreamImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(children: [
        Container(
          margin: EdgeInsets.only(right: 5),
          height: 73.5,
          //width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              image: DecorationImage(
                image: AssetImage('images/capture_1.jpg'),
              )),
        ),
        Positioned(
          bottom: 10,
          left: 5,
          child: Container(
            height: 13,
            width: 53.5,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(2.5)),
            ),
            child: Center(
              child: Text(
                'Auwal rg',
                style: TextStyle(color: Colors.white, fontSize: 9),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
