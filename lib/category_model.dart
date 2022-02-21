import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryModel {
  final String category;
  final int numOfDoctors;
  final IconData icon;
  CategoryModel(
      {required this.category,
      required this.icon,
      required this.numOfDoctors,
      });
}
List<CategoryModel> categoriesData=[
  CategoryModel(category: 'Dental', icon: FontAwesomeIcons.tooth, numOfDoctors: 26),
  CategoryModel(category: 'Heart', icon: Icons.favorite, numOfDoctors: 15),
  CategoryModel(category: 'Brain', icon: FontAwesomeIcons.brain, numOfDoctors: 12),
  CategoryModel(category: 'Eye', icon: FontAwesomeIcons.eye, numOfDoctors: 10),
];