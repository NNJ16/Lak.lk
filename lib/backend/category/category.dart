import 'package:flutter/cupertino.dart';

class Category{
  String title;
  IconData icon;
  List<String> subCategories = [];

  Category(this.title,this.subCategories,this.icon);
}