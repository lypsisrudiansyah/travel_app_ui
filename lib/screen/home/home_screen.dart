import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_ui/screen/home/widget/category_list.dart';
import 'package:travel_app_ui/screen/home/widget/place_staggered_gridview.dart';
import 'package:travel_app_ui/screen/home/widget/search_input.dart';
import 'package:travel_app_ui/theme.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: homeAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchInput(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Explore the world\nwith us!",
                style: TextStyle(
                  fontFamily: "Georgia",
                  height: 1.3,
                  fontSize: 30.0.sp,
                ),
              ),
            ),
            const CategoryList(),
            PlaceStaggeredGridview(),
          ],
        ),
      ),
    );
  }

  AppBar homeAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: backgroundColor,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          width: 24,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png')),
        )
      ],
    );
  }
}
