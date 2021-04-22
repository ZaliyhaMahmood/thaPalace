import 'package:flutter/material.dart';

class DividerBox extends StatelessWidget {
  const DividerBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      width: double.infinity,
      child: Divider(
        color: Color(0xFF525252).withOpacity(0.5),
        //  height: 0.5,
      ),
    );
  }
}
