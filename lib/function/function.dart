import 'package:flutter_weather_app/models/wheather_level.dart';

class FunctionLib{

  // 현재 시간에 따라서 백그라운드 정해주기
  String getBg(){
    String backgroundImagePath;

    var now = DateTime.now();
    if(5 <= now.hour && now.hour <= 8) backgroundImagePath = "assets/background/morning.jpeg";
    else if(9 <= now.hour && now.hour <= 12) backgroundImagePath = "assets/background/day.png";
    else if(13 <= now.hour && now.hour <= 17) backgroundImagePath = "assets/background/afternoon.jpg";
    else if(18 <= now.hour && now.hour <= 20) backgroundImagePath = "assets/background/evening.jpg";
    else if(21 <= now.hour && now.hour <= 23) backgroundImagePath = "assets/background/night.jpg";
    else if(0 <= now.hour && now.hour <= 4) backgroundImagePath = "assets/background/night.jpg";
    print(backgroundImagePath);
    return backgroundImagePath;
  }

  // 온도에 따라서 날씨 레벨 정해주기
  WeatherLevel getWeatherLevel(int temp){
    WeatherLevel weatherLevel;

    if(temp <= 5) weatherLevel = WeatherLevel.cold3;
    else if(6 <= temp && temp <= 9) weatherLevel = WeatherLevel.cold2;
    else if(10 <= temp && temp <= 11) weatherLevel = WeatherLevel.cold1;
    else if(12 <= temp && temp <= 16) weatherLevel = WeatherLevel.cold;
    else if(17 <= temp && temp <= 19) weatherLevel = WeatherLevel.warm;
    else if(20 <= temp && temp <= 22) weatherLevel = WeatherLevel.warm1;
    else if(23 <= temp && temp <= 26) weatherLevel = WeatherLevel.warm2;
    else if(27 <= temp) weatherLevel = WeatherLevel.warm3;
    print(weatherLevel);
    return weatherLevel;
  }

}

