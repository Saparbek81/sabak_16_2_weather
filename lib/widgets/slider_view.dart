import 'package:flutter/material.dart';

class SliderView extends StatelessWidget {
  const SliderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 27.6, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Tuday',
                style: TextStyle(fontSize: 13.8, fontWeight: FontWeight.w700),
              ),
              Text(
                'Tomorrow',
                style: TextStyle(fontSize: 13.8, fontWeight: FontWeight.w400),
              ),
              Text(
                'Next 7 days',
                style: TextStyle(fontSize: 13.8, fontWeight: FontWeight.w400),
              ),
              Icon(
                Icons.arrow_back_ios,
                size: 15,
                color: Colors.grey,
              )
            ],
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 0.86,
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 5,
              pressedElevation: 5,
            ),
            overlayShape: const RoundSliderOverlayShape(
              overlayRadius: 14,
            ),
          ),
          child: Slider(
              activeColor: Colors.black,
              inactiveColor: Colors.black,
              value: 100,
              max: 100,
              divisions: 5,
              label: ' hello',
              onChanged: (double value) {}),
        )
      ],
    );
  }
}
