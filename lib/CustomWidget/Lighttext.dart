import 'package:flutter/material.dart';

class LightText extends StatelessWidget {
  LightText({
    super.key,
    this.align,
    this.size = 20,
    required this.text,
    this.textOverflow = TextOverflow.ellipsis,
    this.font = "font30",
    this.color,
  });

  double size;
  final String text;
  final Color? color;
  final TextAlign? align;
  final String font;
  TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      overflow: textOverflow,
      style: TextStyle(fontSize: size, color: color, fontFamily: font),
    );
  }
}
