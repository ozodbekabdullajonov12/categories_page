import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key, required this.image, required this.text});

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
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: 159,
            height: 141,
            child: image,
          ),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ],
    );
  }
}
