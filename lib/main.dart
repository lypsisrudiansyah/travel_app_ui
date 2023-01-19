import 'package:flutter/material.dart';
import 'package:travel_app_ui/screen/home/home_screen.dart';
// import 'package:travel_app_ui/screen/home/home_screen.dart';
import 'package:travel_app_ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: backgroundColor,
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: accentColor,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(color: headline1Color),
          bodyText1: TextStyle(color: bodyText1Color),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
