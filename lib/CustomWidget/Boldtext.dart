import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  BoldText(
      {super.key,
      this.size = 20,
      this.align,
      this.textOverflow = TextOverflow.ellipsis,
      this.font = "font30",
      required this.text,
      this.color});

  double size;
  final String font;
  final String text;
  final Color? color;
  final TextAlign? align;
  TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      overflow: textOverflow,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: color,
        fontFamily: font,
      ),
    );
  }
}
