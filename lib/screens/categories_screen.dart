import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:mealapp/dummy_data.dart';
import 'package:mealapp/widgets/category_item.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(20),
        children: DummyCategories.map(
          (catData)=>CategoryItem(catData.id, catData.title,catData.color),).toList(),
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent:100,
              crossAxisCount:2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
          ) ,
    );
  }
}
