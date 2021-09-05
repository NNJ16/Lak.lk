import 'package:flutter/material.dart';
import 'package:lak_app/screens/ads/category_screen.dart';
import 'package:lak_app/screens/ads/components/category_button.dart';
import 'package:lak_app/screens/ads/components/category_main_card.dart';
import 'package:lak_app/screens/ads/post_ad_screen.dart';

class PostAdBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Namal Perera!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text("choose and option bellow to post an ad"),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: CategoryMainCard(),
                ),
                Expanded(
                  child:CategoryMainCard(),
                ),
                Expanded(
                  child: CategoryMainCard(),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CategoryMainCard(),
                ),
                Expanded(
                  child: CategoryMainCard(),
                ),
                Expanded(
                  child: CategoryMainCard(),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CategoryMainCard(),
                ),
                Expanded(
                  child: CategoryMainCard(),
                ),
                Expanded(
                  child: CategoryMainCard(),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            CategoryButton(
              title: "Sell on other categories",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryScreen(),
                  ),
                );
              },
              icon: Icons.chevron_right,
            )
          ],
        ),
      ),
    );
  }
}
