import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lak_app/constant/constants.dart';
import 'package:lak_app/screens/ads/post_ad_screen.dart';

class CategoryCard extends StatefulWidget {
  CategoryCard(
      {required Key key,
      required this.title,
      required this.icon,
      required this.onPressed,
      required this.subCategories})
      : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback? onPressed;
  final List<String> subCategories;

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        if (visible) {
          setState(() {
            visible = false;
          });
        } else {
          setState(() {
            visible = true;
          });
        }
      },
      child: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      widget.icon,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(
                  visible ? Icons.expand_less : Icons.expand_more,
                  color: kPrimaryColor,
                ),
              ],
            ),
            Divider(
              color: Colors.black12,
            ),
            Visibility(
              visible: visible,
              child: Padding(
                padding: EdgeInsets.only(left: 26),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.subCategories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 8),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(widget.subCategories[index]),
                                  Icon(
                                    Icons.chevron_right,
                                    color: kPrimaryColor,
                                  )
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PostAdScreen(
                                        icon: widget.icon,
                                        category: widget.title,
                                        subCategory:
                                            widget.subCategories[index],
                                      ),
                                    ));
                              },
                            ),
                            Divider(
                              color: Colors.black12,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
