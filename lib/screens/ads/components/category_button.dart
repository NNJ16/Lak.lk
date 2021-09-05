import 'package:flutter/material.dart';
import 'package:lak_app/constant/constants.dart';

class CategoryButton extends StatelessWidget {
  CategoryButton({required this.title, required this.icon, required this.onPressed});
  final String title;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          alignment: Alignment.centerLeft, primary: Colors.black54),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            icon,
            color: ksecondaryColor,
            size: 30,
          ),
        ],
      ),
    );
  }
}
