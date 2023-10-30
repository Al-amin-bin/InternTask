import 'package:flutter/material.dart';

class BackOutLineButtonIcon extends StatefulWidget {
  const BackOutLineButtonIcon({super.key, required this.iconColor, required this.fillColor});
  final int iconColor;
  final int fillColor;

  @override
  State<BackOutLineButtonIcon> createState() => _BackOutLineButtonIconState();
}

class _BackOutLineButtonIconState extends State<BackOutLineButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 52,
      height: 52,
      decoration: ShapeDecoration(
        color: Color(widget.fillColor),
        shape: RoundedRectangleBorder(
          side:
          const BorderSide(width: 1, color: Color(0xFFE8E6EA)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: IconButton(
        icon:  Icon(
          Icons.arrow_back_ios_new,
          color: Color(widget.iconColor),
        ),
        onPressed: () {},
      ),
    );
  }
}


