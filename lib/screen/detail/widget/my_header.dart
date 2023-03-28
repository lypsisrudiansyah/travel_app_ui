// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5,),
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: const Icon(Icons.arrow_back),
            ),
          ),
        )
      ]),
    );
  }
}
