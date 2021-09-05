
import 'package:flutter/material.dart';
import 'package:lak_app/backend/category/category.dart';

class CategoryList{
  List<Category> categoryList = [
    Category("Electronics", ["Mobile Phones","Mobile Phone Accessories","Computers & Tablets"], Icons.phone_android),
    Category("Vehicles", ["Cars","Motorbikes","Three Wheelers"], Icons.drive_eta),
    Category("Property", ["Land","House For Sale","Apartment For Sale"], Icons.house),
  ];
}