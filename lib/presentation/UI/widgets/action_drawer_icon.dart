import 'package:flutter/material.dart';

class ActionDrawerIcon extends StatelessWidget {
  const ActionDrawerIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      child: Image.asset("assets/images/icon/setting-config.png"),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE8E6EA)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}