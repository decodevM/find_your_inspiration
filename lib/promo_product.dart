import 'package:flutter/material.dart';

class PromoProduct extends StatelessWidget {
  final String image;

  const PromoProduct({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    const String imagePath = 'assets/images/';
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imagePath + image,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.1),
                    Colors.black.withOpacity(.2),
                    Colors.black.withOpacity(.5),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [
                    .1,
                    .6,
                    .8,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
