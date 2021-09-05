import 'package:flutter/material.dart';
import 'package:lak_app/screens/ads/components/app_bar.dart';
import 'package:lak_app/screens/ads/components/category_body.dart';
import 'package:lak_app/screens/ads/components/post_body.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Select a category",style: TextStyle(color: Colors.black54),),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(Icons.close,color: Colors.black54,),),
          ),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.all(8),
          child: CategoryBody()),
    );
  }
}
