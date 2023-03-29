// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:travel_app_ui/model/place.dart';
import 'package:travel_app_ui/screen/detail/widget/about.dart';
import 'package:travel_app_ui/screen/detail/widget/book_button.dart';
import 'package:travel_app_ui/screen/detail/widget/feature_list.dart';
import 'package:travel_app_ui/screen/detail/widget/my_header.dart';
import 'package:travel_app_ui/screen/detail/widget/place_name.dart';
import 'package:travel_app_ui/theme.dart';

class DetailScreen extends StatelessWidget {
  final Place place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyHeader(imageUrl: place.imageUrl),
            PlaceName(title: place.title, subtitle: place.subtitle),
            const About(),
            const FeatureList(),
            // const SizedBox(height: 20,),
            const BookButton(),
          ],
        ),
      ),
    );
  }
}
