// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:travel_app_ui/model/place.dart';
import 'package:travel_app_ui/screen/detail/detail_screen.dart';

class PlaceItem extends StatelessWidget {
  final Place place;
  const PlaceItem({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                place: place,
              ),
            ));
      },
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            height: place.height,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                  place.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: place.height,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withAlpha(0),
                  Colors.black.withAlpha(0),
                  Colors.black.withAlpha(0),
                  Colors.black12,
                  Colors.black87,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    place.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    place.subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
