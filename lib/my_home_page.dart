import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sabak_16_2_weather/conctans/app_text_styles.dart';
import 'package:sabak_16_2_weather/conctans/linner_gradient.dart';
import 'package:sabak_16_2_weather/widgets/slider_view.dart';
import 'package:sabak_16_2_weather/widgets/weather_day_card.dart';
import 'package:sabak_16_2_weather/widgets/weather_view_banner.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String weatherInfo = "Маалымат жуктолуудо";
  String sityName = "Шаарлар";

  void weatherFun() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);
      final name = data['name'];
      final temp = data['main']['temp'];
      final weatherKelvin = temp - 273.15;
      setState(() {
        weatherInfo = weatherKelvin.toStringAsFixed(0);
        sityName = name;
      });
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    // TODO:implement.initState
    weatherFun();
  }

  // @override
  // void dispose()
  // _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff66d8f1),
      appBar: AppBar(
        backgroundColor: const Color(0xff66d8f1),
        title: Image.asset(
          'images/icons/search.png',
          width: 50,
        ),
        actions: [
          Image.asset('images/icons/menu.png'),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(gradient: LinearGradientColor.liner),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31.5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Bishkek,",
                style: AppTextStyles.lacotionStyles,
              ),
              const Text("Kyrgyzstan", style: AppTextStyles.lacotionStyles),
              const Text(
                "Tue,jan 30",
                style: AppTextStyles.dataStyles,
              ),
              // Text("($sityName шаарындагы температура: $weatherInfo gradus"),
              Row(
                children: [
                  Image.asset(
                    'images/cludy.png',
                    width: 250,
                    height: 250,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            weatherInfo,
                            style: AppTextStyles.tempStyles,
                          ),
                          const Text(
                            '\u2103',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Text(
                        sityName,
                        style: AppTextStyles.tempNameStyles,
                      )
                    ],
                  ),
                ],
              ),
              const WeatherVanner(
                image: 'assets/images/umbrella.png',
                text1: 'RainFall',
                text2: '3 cm',
              ),
              const WeatherVanner(
                image: 'assets/images/Vector.png',
                text1: 'Wind',
                text2: '19km/h',
              ),
              const WeatherVanner(
                image: 'assets/images/Rectangle 14.png',
                text1: 'Humidity',
                text2: '64%',
              ),
              const SliderView(),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(gradient: LinearGradientColor.liner),
        child: SizedBox(
          height: 98.99,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const WeatherDayCard(
                text1: 'now',
                image: 'images/icon_1.png',
                text2: '19',
              );
            },
          ),
        ),
      ),
    ));
  }
}
