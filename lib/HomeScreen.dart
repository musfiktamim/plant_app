import 'package:flutter/material.dart';
import 'package:plant_app/CustomWidget/Boldtext.dart';
import 'package:plant_app/CustomWidget/Featuredplantscard.dart';
import 'package:plant_app/CustomWidget/Lighttext.dart';
import 'package:plant_app/CustomWidget/Productcard.dart';
import 'package:plant_app/CustomWidget/colorss.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  List itemList = [
    "assets/images/image_1.png",
    "assets/images/image_2.png",
    "assets/images/image_3.png",
    "assets/images/bottom_img_1.png",
    "assets/images/bottom_img_2.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
      ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Container(
                    width: double.maxFinite,
                    height: 250,
                    color: mainColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/icons/menu.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                  child: Row(
                    children: [
                      BoldText(
                        text: "Hi Uishopy!",
                        color: Colors.white,
                        size: 40,
                      ),
                      Spacer(),
                      Image.asset("assets/images/logo.png"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220, right: 20, left: 20),
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: mainColor.withOpacity(0.2),
                            offset: Offset(0, 10),
                            blurRadius: 20)
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                            width: 330,
                            height: 70,
                            child: Center(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 20),
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                    color: mainColor.withOpacity(0.5),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            )),
                        Image.asset("assets/icons/search.png")
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoldText(text: "Recomended"),
                  Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: LightText(
                        text: "More",
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // products
            Container(
              width: double.maxFinite,
              height: 275,
              child: ListView.builder(
                  itemCount: itemList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Expanded(
                        child: ProductCard(
                      imagepath: itemList[index].toString(),
                    ));
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoldText(text: "Featured Plants"),
                  Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: LightText(
                        text: "More",
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // featured box

            Container(
              width: double.maxFinite,
              height: 240,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return Expanded(child: Featuredplantscard());
                  }),
            ),

            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ));
  }
}
