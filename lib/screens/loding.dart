import 'package:flutter/material.dart';
import 'package:flutter_weather_app/data/my_location.dart';
import 'package:flutter_weather_app/data/network.dart';
import 'package:flutter_weather_app/screens/weather_screen.dart';

const String apiKey = "9644ec539c10586e19b9b778fdd62a15";

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double latitude3;
  double longitude3;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude3 = myLocation.latitude2;
    longitude3 = myLocation.longitude2;

    Network network = Network(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude3&lon=$longitude3&lang=kr&appid=$apiKey&units=metric');
    var weatherData = await network.getJsonData();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                WeatherScreen(parseWeatherData: weatherData)));
  }

  // void fetchData() async {
  //
  //     var description = parsingData['weather'][0]['description'];
  //     var speed = parsingData['wind']['speed'];
  //     var deg = parsingData['wind']['deg'];
  //     var id = parsingData['id'];
  //
  //     print("description: $description");
  //     print("windSpeed: $speed");
  //     print("windDeg: $deg");
  //     print("id: $id");
  //   } else {
  //     print(response.statusCode);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset("assets/images/Location find.png").image,
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            right: 0,
            left: 0,
            child: Text(
              "위치정보 불러오는 중..",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
