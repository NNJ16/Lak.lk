import 'package:flutter/material.dart';
import 'package:lak_app/screens/ads/components/app_bar.dart';
import 'package:lak_app/screens/ads/components/post_body.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: lakAppBar(context, "POST AN ADD"),
      body: PostAdBody(),
    );
  }
}
