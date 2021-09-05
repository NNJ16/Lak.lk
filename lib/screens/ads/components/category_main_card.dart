import 'package:flutter/material.dart';
import 'package:lak_app/constant/constants.dart';

class CategoryMainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Card(
        color: ksecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.directions_car_filled,
              size: 32,
              color: kPrimaryColor,
            ),
            Text(
              "Vehicles",
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
