import 'package:flutter/material.dart';

class WeatherVanner extends StatelessWidget {
  const WeatherVanner({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
  });
  final String image;
  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.31),
      child: Container(
        width: double.infinity,
        height: 65.54,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.25),
          borderRadius: BorderRadius.circular(
            17.25,
          ),
          border: Border.all(color: const Color(0xffbceffb), width: 0.86),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.97, right: 48.29),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 37.94,
                    height: 37.94,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13.8),
                    ),
                    child: Image.asset(image),
                  ),
                  const SizedBox(
                    width: 17.45,
                  ),
                  Text(
                    text1,
                    style: const TextStyle(
                        fontSize: 12.7, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Text(
                text2,
                style: const TextStyle(
                    fontSize: 12.7, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
