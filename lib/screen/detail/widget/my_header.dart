// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:travel_app_ui/theme.dart';

class MyHeader extends StatelessWidget {
  final String imageUrl;
  const MyHeader({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(children: [
        Positioned(
          left: 30,
          top: MediaQuery.of(context).padding.top,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              
              padding: const EdgeInsets.only(
                left: 10,
                top: 5,
                bottom: 5,
              ),
              decoration:  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: const Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
        Positioned(
          right: 20,
          bottom: 5,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: accentColor,
              borderRadius: BorderRadius.circular(36),
            ),
            child: const Icon(Icons.favorite, color: Colors.red,),
          ),
        )
      ]),
    );
  }
}
