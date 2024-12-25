import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:lesson110/images/categories_image.dart";
import "package:lesson110/images/seafood_image.dart";
import "package:lesson110/utils/constants.dart";
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.MainBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.MainBackgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: SvgPicture.asset(
                "assets/svg/vector.svg",
                color: AppColors.RedPinkMain,
              ),
            ),
            Text(
              "Categories",
              style: TextStyle(
                color: AppColors.RedPinkMain,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      color: Color(0xFFEC888D),
                      borderRadius: BorderRadius.circular(14)),
                  child: SvgPicture.asset(
                    "assets/svg/notification.svg",
                    color: Colors.pink,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      color: Color(0xFFEC888D),
                      borderRadius: BorderRadius.circular(14)),
                  child: SvgPicture.asset(
                    "assets/svg/search.svg",
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 110),
          children: [
            SeaFoodImage(
                image: Image.asset("assets/images/seafood.png"),
                text: "Seafood"),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Images(
                        image: Image.asset("assets/images/lunch.png"),
                        text: "Lunch"),
                    Images(
                        image: Image.asset("assets/images/breakfast.png"),
                        text: "Breakfast"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Images(
                        image: Image.asset("assets/images/dinner.png"),
                        text: "Dinner"),
                    Images(
                        image: Image.asset("assets/images/vegan.png"),
                        text: "Vegan"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Images(
                        image: Image.asset("assets/images/dessert.png"),
                        text: "Dessert"),
                    Images(
                        image: Image.asset("assets/images/drinks.png"),
                        text: "drinks"),
                  ],
                ),
              ],
            ),
          ],
        ),
      bottomNavigationBar: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.RedPinkMain,
            borderRadius: BorderRadius.circular(33),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: SvgPicture.asset("assets/svg/home.svg",width: 25,height: 22,),
                onPressed: () => context.go("/page2"),
              ),
              SvgPicture.asset("assets/svg/community.svg",width: 25,height: 22,),
              SvgPicture.asset("assets/svg/categories.svg",width: 25,height: 22,),
              SvgPicture.asset("assets/svg/profile.svg",width: 25,height: 22,),
            ],
          ),
        ),
      ),
    );
  }
}
