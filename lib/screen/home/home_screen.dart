import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_ui/screen/home/widget/search_input.dart';
import 'package:travel_app_ui/theme.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SearchInput(),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  HomeAppBar({super.key});

  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.green,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          width: 24,
        ),
      ),
      actions: [
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png')),
        )
      ],
    );
  }
}
