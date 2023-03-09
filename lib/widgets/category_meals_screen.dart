import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String cateogryId;
  final String cateogryTitle;

  CategoryMealsScreen({required this.cateogryId, required this.cateogryTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cateogryTitle),
      ),
      body: Text('The recepies for the category'),
    );
  }
}
