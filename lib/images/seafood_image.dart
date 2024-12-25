import 'package:flutter/material.dart';

class SeaFoodImage extends StatelessWidget {
  const SeaFoodImage({super.key, required this.image, required this.text});

  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: 356,
            height: 148,
            child: image,
          ),
        ),
      ],
    );
  }
}
