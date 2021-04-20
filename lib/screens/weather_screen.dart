import 'package:flutter/material.dart';
import 'package:flutter_weather_app/components/component.dart';
import 'package:flutter_weather_app/function/function.dart';
import 'package:flutter_weather_app/models/wheather_level.dart';

class WeatherScreen extends StatefulWidget {
  final parseWeatherData;

  const WeatherScreen({Key key, this.parseWeatherData}) : super(key: key);

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final FunctionLib functionLib = FunctionLib();
  String cityName;
  int temp;
  String description;
  String backgroundImagePath;
  WeatherLevel weatherLevel;

  @override
  void initState() {
    super.initState();
    updateData(widget.parseWeatherData);
  }

  void updateData(dynamic weatherData) {
    var temp2 = weatherData['main']['temp']; // double 형도 들어오고 int 형도 들어옴
    temp = temp2.round();
    cityName = weatherData['name'];
    description = weatherData['weather'][0]['description'];
    backgroundImagePath = functionLib.getBg(); // 현재 시간에 따라서 백그라운드 정해주기
    weatherLevel = functionLib.getWeatherLevel(temp); // 현재 온도에 따라서 추천 드레스 달라지기
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildBackground(backgroundImagePath),
          buildTempAndCity(temp, cityName, description),
          buildDressView(weatherLevel),
        ],
      ),
    );
  }
}
