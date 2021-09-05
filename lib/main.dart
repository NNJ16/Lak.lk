import 'package:flutter/material.dart';
import 'package:lak_app/constant/constants.dart';
import 'screens/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lak App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: ksecondaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1 : TextStyle(color: Colors.black54),
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: 'main_screen',
      routes: {
        'main_screen': (context)=>MainScreen(),
      },
    );
  }
}