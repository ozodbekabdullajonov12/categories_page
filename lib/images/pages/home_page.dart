import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson110/utils/constants.dart';
import 'package:go_router/go_router.dart';

class RecipeAppImage extends StatelessWidget {
  const RecipeAppImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xFF1C0F0D),
      appBar: AppBar(
        actions: [
          Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: const Color(0xFFFFC6C9),
                borderRadius: BorderRadius.circular(11),
              ),
              child: SvgPicture.asset("assets/assets2/noti.svg")),
          const SizedBox(
            width: 5,
          ),
          Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: const Color(0xFFFFC6C9),
                borderRadius: BorderRadius.circular(11),
              ),
              child: SvgPicture.asset("assets/assets2/search.svg")),
        ],
        backgroundColor: const Color(0xFF1C0F0D),
        title: const Column(
          children: [
            Text(
              "Hi! Ozodbek",
              style: TextStyle(
                fontSize: 26,
                color: AppColors.RedPinkMain,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "What are you cooking today",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 125),
        children: [ImageItem()],
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
              SvgPicture.asset("assets/assets2/Home.svg",width: 25,height: 22,),
              SvgPicture.asset("assets/assets2/chat.svg",width: 25,height: 22,),
              IconButton(icon: SvgPicture.asset("assets/assets2/main.svg",width: 25,height: 22,),
                onPressed: () => context.go("/"),
              ),
              SvgPicture.asset("assets/assets2/profile.svg",width: 25,height: 22,),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: const Text(
              "Trending Recipe",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEC888D),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: 0,
                left: 0,
                bottom: -40,
                child: Center(
                  child: Container(
                    width: 348,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF1C0F0D),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                          color: AppColors.RedPinkMain, width: 0.7),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Salami and cheese pizza',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/assets2/clock.svg",
                                  color: AppColors.RedPinkMain,
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  "30Min",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFEC888D),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "This is a quick overview of the ingredients...",
                              style: TextStyle(
                                color: Color(0xFFEC888D),
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Row(
                              children: [
                                const Text(
                                  "5",
                                  style: TextStyle(color: Color(0xFFEC888D)),
                                ),
                                const SizedBox(width: 5),
                                SvgPicture.asset("assets/assets2/star.svg"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: const Image(
                  image: AssetImage("assets/assets2/lesson7_image.png"),
                  width: 358,
                  height: 143,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Container(
                width: 430,
                height: 255,
                decoration: BoxDecoration(
                    color: AppColors.RedPinkMain,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ChickenBurgerAndTiramisu(),
                    ChickenBurger(),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              "Top chef",
              style: TextStyle(
                color: AppColors.RedPinkMain,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Chef1(),
                SizedBox(
                  width: 15,
                ),
                Chef2(),
                SizedBox(
                  width: 15,
                ),
                Chef3(),
                SizedBox(
                  width: 15,
                ),
                Chef4(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Recently added",
              style: TextStyle(
                color: Color(0xFFFD5D69),
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontFamily: "Poppins",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -62,
                    right: 10,
                    left: 10,
                    child: Container(
                      width: 159,
                      height: 76,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Color(0xFFFD5D69),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lemonade",
                              style: TextStyle(
                                color: Color(0xFF3E2823),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                fontFamily: "Poppins",
                              ),
                            ),
                            Text(
                              "Acidic and refreshing",
                              style: TextStyle(
                                color: Color(0xFF3E2823),
                                fontSize: 13,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "4",
                                  style: TextStyle(
                                    color: Color(0xFFEC888D),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SvgPicture.asset("assets/assets2/star.svg"),
                                SizedBox(
                                  width: 60,
                                ),
                                SvgPicture.asset(
                                  "assets/assets2/clock.svg",
                                  color: Color(0xFFEC888D),
                                ),
                                Text(
                                  "30min",
                                  style: TextStyle(
                                    color: Color(0xFFEC888D),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Image(
                    image: AssetImage("assets/assets2/tobaco.png"),
                    width: 169,
                    height: 153,
                  ),
                ],
              ),
              LastWidgets(),
            ],
          ),
        ],
      ),
    );
  }
}

class ChickenBurger extends StatelessWidget {
  const ChickenBurger({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Image(
            image: AssetImage("assets/assets1/Tiramisu.png"),
            width: 168,
            height: 162,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: -25,
          child: Container(
            width: 170,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Tiramisu",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF1C0F0D),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "5",
                            style: TextStyle(
                              color: Color(0xFFEC888D),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SvgPicture.asset("assets/assets2/star.svg"),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SvgPicture.asset(
                      "assets/assets2/clock.svg",
                      color: Color(0xFFEC888D),
                    ),
                    Text(
                      "15min",
                      style: TextStyle(
                        color: Color(0xFFEC888D),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ChickenBurgerAndTiramisu extends StatelessWidget {
  const ChickenBurgerAndTiramisu({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Image(
            image: AssetImage("assets/assets1/gamburger.png"),
            width: 168,
            height: 162,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: -25,
          child: Container(
            width: 170,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Chicken Burger",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF1C0F0D),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "5",
                            style: TextStyle(
                              color: Color(0xFFEC888D),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SvgPicture.asset("assets/assets2/star.svg"),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SvgPicture.asset(
                      "assets/assets2/clock.svg",
                      color: Color(0xFFEC888D),
                    ),
                    Text(
                      "15min",
                      style: TextStyle(
                          color: Color(0xFFEC888D),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Chef1 extends StatelessWidget {
  const Chef1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage("assets/assets2/chef1.png"),
          width: 83,
          height: 74,
        ),
        Text(
          "Joseph",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}

class Chef4 extends StatelessWidget {
  const Chef4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage("assets/assets2/chef4.png"),
          width: 83,
          height: 74,
        ),
        Text(
          "Jessica",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}

class Chef3 extends StatelessWidget {
  const Chef3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage("assets/assets2/chef3.png"),
          width: 83,
          height: 74,
        ),
        Text(
          "Emily",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}

class Chef2 extends StatelessWidget {
  const Chef2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage("assets/assets2/chef2.png"),
          width: 83,
          height: 74,
        ),
        Text(
          "Andrew",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}

class LastWidgets extends StatelessWidget {
  const LastWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          bottom: -62,
          right: 10,
          left: 10,
          child: Container(
            width: 159,
            height: 76,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: AppColors.RedPinkMain,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lemonade",
                    style: TextStyle(
                      color: Color(0xFF3E2823),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                  Text(
                    "Acidic and refreshing",
                    style: TextStyle(color: Color(0xFF3E2823)),
                  ),
                  Row(
                    children: [
                      Text(
                        "4",
                        style: TextStyle(
                          color: Color(0xFFEC888D),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      SvgPicture.asset("assets/assets2/star.svg"),
                      SizedBox(
                        width: 60,
                      ),
                      SvgPicture.asset(
                        "assets/assets2/clock.svg",
                        color: Color(0xFFEC888D),
                      ),
                      Text(
                        "30min",
                        style: TextStyle(
                          color: Color(0xFFEC888D),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Image(
          image: AssetImage("assets/assets2/mojito.png"),
          width: 169,
          height: 153,
        ),
      ],
    );
  }
}