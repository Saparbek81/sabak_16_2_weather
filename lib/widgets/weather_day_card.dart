import 'package:flutter/material.dart';

class WeatherDaysCard extends StatelessWidget {
  const WeatherDaysCard({
    super.key,
    required this.text1,
    required this.image,
    required this.text2,
  });
  final String text1, image, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Text(
              text1,
              style:
                  const TextStyle(fontSize: 12.07, fontWeight: FontWeight.w400),
            ),
            Image.asset(
              image,
            ),
            Text(
              text2,
              style:
                  const TextStyle(fontSize: 12.07, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
