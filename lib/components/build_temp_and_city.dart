import 'package:flutter/material.dart';
import 'package:get/get.dart';

Positioned buildTempAndCity(var temp, String cityName, String description) {
  return Positioned(
    top: Get.size.height * 0.15,
    child: Column(
      children: [
        Text(
          "${temp.toString()} °",
          style: TextStyle(
            color: Colors.white,
            fontSize: 70,
            fontWeight: FontWeight.w200,
            letterSpacing: -7,
          ),
        ),
        Text(
          cityName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          description,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    ),
  );
}