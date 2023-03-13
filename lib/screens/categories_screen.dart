import 'package:flutter/material.dart';

import 'package:deli_meals/dummy_data.dart';
import 'package:deli_meals/widgets/category_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: GridView(
          padding: EdgeInsets.all(15),
          children: [
            ...DUMMY_CATEGORIES.map((catData) {
              return CategoryItem(
                title: catData.title,
                color: catData.color,
                id: catData.id,
              );
            }).toList(),
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          )),
    );
  }
}
