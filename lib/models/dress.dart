import 'package:flutter/cupertino.dart';
import 'package:flutter_weather_app/models/wheather_level.dart';

class Dress {
  final String dressName;
  final List<WeatherLevel> weatherLevel;
  final String imagePath;

  Dress({
    @required this.dressName,
    @required this.weatherLevel,
    @required this.imagePath,
  });
}

List<Dress> dressList = [
  Dress(
      dressName: '나시티',
      weatherLevel: [WeatherLevel.warm3],
      imagePath: "assets/dress/dress-001.png"),
  Dress(
      dressName: '반바지',
      weatherLevel: [WeatherLevel.warm3, WeatherLevel.warm2],
      imagePath: "assets/dress/dress-002.png"),
  Dress(
      dressName: '민소매 원피스',
      weatherLevel: [WeatherLevel.warm3],
      imagePath: "assets/dress/dress-003.png"),
  Dress(
      dressName: '반팔',
      weatherLevel: [WeatherLevel.warm3, WeatherLevel.warm2],
      imagePath: "assets/dress/dress-004.png"),
  Dress(
      dressName: '얇은 셔츠',
      weatherLevel: [WeatherLevel.warm2, WeatherLevel.cold],
      imagePath: "assets/dress/dress-005.png"),
  Dress(
      dressName: '얇은 긴팔',
      weatherLevel: [WeatherLevel.warm2],
      imagePath: "assets/dress/dress-006.png"),
  Dress(
      dressName: '반바지',
      weatherLevel: [WeatherLevel.warm3, WeatherLevel.warm2],
      imagePath: "assets/dress/dress-007.png"),
  Dress(
      dressName: '반바지',
      weatherLevel: [WeatherLevel.warm3, WeatherLevel.warm2],
      imagePath: "assets/dress/dress-008.png"),
  Dress(
      dressName: '긴팔티',
      weatherLevel: [WeatherLevel.warm1],
      imagePath: "assets/dress/dress-009.png"),
  Dress(
      dressName: '가디건',
      weatherLevel: [WeatherLevel.warm1, WeatherLevel.warm, WeatherLevel.cold],
      imagePath: "assets/dress/dress-010.png"),
  Dress(
      dressName: '후드티',
      weatherLevel: [WeatherLevel.warm1, WeatherLevel.warm, WeatherLevel.cold1],
      imagePath: "assets/dress/dress-011.png"),
  Dress(
      dressName: '면바지',
      weatherLevel: [WeatherLevel.warm1, WeatherLevel.warm],
      imagePath: "assets/dress/dress-012.png"),
  Dress(
      dressName: '슬랙스',
      weatherLevel: [WeatherLevel.warm1, WeatherLevel.warm],
      imagePath: "assets/dress/dress-013.png"),
  Dress(
      dressName: '청바지',
      weatherLevel: [WeatherLevel.warm1, WeatherLevel.warm],
      imagePath: "assets/dress/dress-014.png"),
  Dress(
      dressName: '니트',
      weatherLevel: [WeatherLevel.cold, WeatherLevel.cold1, WeatherLevel.cold2],
      imagePath: "assets/dress/dress-015.png"),
  Dress(
      dressName: '맨투맨',
      weatherLevel: [WeatherLevel.warm3, WeatherLevel.warm, WeatherLevel.cold1,],
      imagePath: "assets/dress/dress-016.png"),
  Dress(
      dressName: '자켓',
      weatherLevel: [WeatherLevel.cold1, WeatherLevel.cold, WeatherLevel.cold2],
      imagePath: "assets/dress/dress-017.png"),
  Dress(
      dressName: '살색 스타킹',
      weatherLevel: [WeatherLevel.cold],
      imagePath: "assets/dress/dress-018.png"),
  Dress(
      dressName: '코트',
      weatherLevel: [WeatherLevel.cold1, WeatherLevel.cold2],
      imagePath: "assets/dress/dress-019.png"),
  Dress(
      dressName: '조끼패딩',
      weatherLevel: [WeatherLevel.cold2, WeatherLevel.cold3],
      imagePath: "assets/dress/dress-020.png"),
  Dress(
      dressName: '패딩',
      weatherLevel: [WeatherLevel.cold2, WeatherLevel.cold3],
      imagePath: "assets/dress/dress-021.png"),
  Dress(
      dressName: '빵모자',
      weatherLevel: [WeatherLevel.cold3],
      imagePath: "assets/dress/dress-022.png"),
  Dress(
      dressName: '목도리',
      weatherLevel: [WeatherLevel.cold3],
      imagePath: "assets/dress/dress-023.png"),
];
