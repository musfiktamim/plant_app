import 'package:flutter/material.dart';
import 'package:plant_app/CustomWidget/Boldtext.dart';
import 'package:plant_app/CustomWidget/colorss.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.imagepath});
  final String? imagepath;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
      height: 245,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: mainColor.withOpacity(0.2),
              blurRadius: 20,
              offset: Offset(10, 0))
        ],
      ),
      child: Stack(
        children: [
          Container(
            height: 180,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              image: DecorationImage(
                  image: AssetImage(imagepath ?? ""), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 185, left: 5, right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BoldText(
                      text: "hello",
                      color: Colors.black,
                    ),
                    BoldText(
                      text: "\$100",
                      color: mainColor.withOpacity(0.6),
                    ),
                  ],
                ),
                BoldText(
                  text: "RUSSIA",
                  color: mainColor.withOpacity(0.2),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
