// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    required this.viewIsSelected,
  });

  static List<DietModel> getDiet() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: 'Honey Pancake',
        iconPath: 'assets/icons/honey_pancake.svg',
        level: 'Easy',
        duration: '30 mins',
        calorie: '180 kCal',
        boxColor: const Color(0xff92A3FD),
        viewIsSelected: true,
      ),
    );

    diets.add(
      DietModel(
        name: 'Canai Bread',
        iconPath: 'assets/icons/bread.svg',
        level: 'Easy',
        duration: '20 mins',
        calorie: '230 kCal',
        boxColor: const Color(0xffC58BF2),
        viewIsSelected: false,
      ),
    );

    return diets;
  }
}
