// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NutritionModel {
  String name;
  String iconPath;
  Color boxColor;
  NutritionModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<NutritionModel> getNutrition() {
    List<NutritionModel> categories = [];

    categories.add(
      NutritionModel(
        name: '180kCal',
        iconPath: 'assets/icons/calories.svg',
        boxColor: const Color(0xff92A3FD),
      ),
    );

    categories.add(
      NutritionModel(
        name: '30g fats',
        iconPath: 'assets/icons/transfat.svg',
        boxColor: const Color(0xff92A3FD),
      ),
    );

    categories.add(
      NutritionModel(
        name: '20g proteins',
        iconPath: 'assets/icons/protein.svg',
        boxColor: const Color(0xff92A3FD),
      ),
    );

    categories.add(
      NutritionModel(
        name: '50g carbo',
        iconPath: 'assets/icons/rice.svg',
        boxColor: const Color(0xff92A3FD),
      ),
    );

    return categories;
  }
}
