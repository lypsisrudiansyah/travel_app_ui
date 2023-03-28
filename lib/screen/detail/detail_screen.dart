// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:travel_app_ui/model/place.dart';
import 'package:travel_app_ui/screen/detail/widget/my_header.dart';

class DetailScreen extends StatelessWidget {
  final Place place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            MyHeader(imageUrl: place.imageUrl),
          ],
        ),
      ),
    );
  }
}
