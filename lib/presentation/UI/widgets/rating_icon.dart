import 'package:flutter/material.dart';

class RatingIconWidgets extends StatelessWidget {
  const RatingIconWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 78,
          height: 78,
          child: Image.asset("assets/images/icon/close-small.png"),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(),
            shadows: [
              BoxShadow(
                color: Color(0x11000000),
                blurRadius: 50,
                offset: Offset(0, 20),
                spreadRadius: 0,
              )
            ],
          ),
        ),
        SizedBox(width: 12,),
        Container(
          width: 99,
          height: 99,
          child: Image.asset("assets/images/icon/like.png"),
          decoration: ShapeDecoration(
            color: Color(0xFFE94057),
            shape: OvalBorder(),
            shadows: [
              BoxShadow(
                color: Color(0x33E94057),
                blurRadius: 15,
                offset: Offset(0, 15),
                spreadRadius: 0,
              )
            ],
          ),
        ),
        SizedBox(width: 12,),
        Container(
          width: 78,
          height: 78,
          child: Image.asset("assets/images/icon/star.png"),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(),
            shadows: [
              BoxShadow(
                color: Color(0x11000000),
                blurRadius: 50,
                offset: Offset(0, 20),
                spreadRadius: 0,
              )
            ],
          ),
        ),
      ],
    );
  }
}