import 'package:flutter/material.dart';

class WeatherDayCard extends StatelessWidget {
  const WeatherDayCard({
    super.key,
    this.text1,
    this.image,
    this.text2,
  });
  final text1, image, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 17.25, vertical: 3),
      width: 55.19,
      height: 98.99,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          34.45,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text1),
            Image.asset(
              image,
            ),
            Text(text2),
          ],
        ),
      ),
    );
  }
}
