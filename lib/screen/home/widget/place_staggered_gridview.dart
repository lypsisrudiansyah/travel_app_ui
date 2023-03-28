// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travel_app_ui/model/place.dart';
import 'package:travel_app_ui/screen/home/widget/place_item.dart';

class PlaceStaggeredGridview extends StatelessWidget {
  final placeList = Place.generatePlaces();
  // const PlaceStaggeredGridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //     child: StaggeredGrid.count(crossAxisCount: 4,
      //     mainAxisSpacing: 4,
      // crossAxisSpacing: 4,
      // children: const [
      //   StaggeredGrid.custom()
      //   StaggeredGridTile.fit(crossAxisCellCount: 2, child: PlaceItem(place: ,))
      // ],
      //     ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: MasonryGridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          physics: const ScrollPhysics(),
          itemCount: placeList.length,
          itemBuilder: (context, index) => PlaceItem(place: placeList[index]),
        ),
      ),
    );
  }
}
