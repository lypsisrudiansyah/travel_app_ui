// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:travel_app_ui/theme.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Plitvice Lakes is a national park in Croatia that is famous for its stunning scenery of 16 lakes connected by waterfalls and cascades. The lakes have different colors ranging from blue to green, depending on the minerals and algae in the water.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14.0,
              height: 1.5,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: primaryColor,
                  width: 1,
                ),
              ),
            ),
            child:  Text(
              "Read more",
              style: TextStyle(
                color: primaryColor,
fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}
