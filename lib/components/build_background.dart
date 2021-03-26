import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildBackground(String backgroundImagePath){
  return Container(
    height: Get.size.height,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: Image.asset(backgroundImagePath).image,
        alignment: Alignment.center,
        fit: BoxFit.cover,
      ),
    ),
  );
}
