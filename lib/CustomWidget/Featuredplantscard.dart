import 'package:flutter/material.dart';
import 'package:plant_app/CustomWidget/colorss.dart';

class Featuredplantscard extends StatelessWidget {
  const Featuredplantscard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 220,
      margin: EdgeInsets.only(left: 18, top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/image_1.png"),
              fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: mainColor.withOpacity(0.2),
                blurRadius: 20,
                offset: Offset(10, 10))
          ]),
    );
  }
}
