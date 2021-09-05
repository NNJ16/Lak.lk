import 'package:flutter/material.dart';

AppBar lakAppBar(BuildContext context, String name) {
  return AppBar(
    title: Text(
      name,
      style: TextStyle(color: Colors.white),
    ),
    elevation: 0,
  );
}
