import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/dress.dart';
import 'package:flutter_weather_app/models/wheather_level.dart';

Positioned buildDressView(WeatherLevel weatherLevel) {
  return Positioned(
    bottom: 10,
    left: 0,
    right: 0,
    child: Column(
      children: [
        _buildTitle(),
        _buildListView(weatherLevel),
      ],
    ),
  );
}

Container _buildTitle() {
  return Container(
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
    child: Text(
      "기온별 옷차림",
      style: TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.w200),
    ),
  );
}

Container _buildListView(WeatherLevel weatherLevel) {
  List<Dress> dressResult = [];
  // 드레스 리스트의 요소들 중 날씨 레벨이 받아온 날씨 레벨에 포함된 요소를 리스트에 집어넣기
  for (Dress dress in dressList) {
    if (dress.weatherLevel.contains(weatherLevel)) {
      dressResult.add(dress);
    }
  }

  return Container(
    padding: const EdgeInsets.only(left: 10),
    height: 200,
    child: ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: dressResult.length,
      itemBuilder: (context, index) => buildDressItem(dressResult[index]),
    ),
  );
}

Padding buildDressItem(Dress dress) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white24,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              dress.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            dress.dressName,
            style: TextStyle(
              fontSize: 11,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
