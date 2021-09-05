import 'package:flutter/material.dart';
import 'package:lak_app/backend/category/category_list.dart';
import 'package:lak_app/screens/ads/components/category_card.dart';

class CategoryBody extends StatelessWidget {
  CategoryList List = new CategoryList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: List.categoryList.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryCard(
            title: List.categoryList[index].title,
            icon: List.categoryList[index].icon,
            subCategories: List.categoryList[index].subCategories,
            onPressed: () {

            },
            key: UniqueKey(),
          );
        },
      ),
    );
  }
}
