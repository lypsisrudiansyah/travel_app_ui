import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 7,
          offset: const Offset(0, 3),
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Container(
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 24,
            ),
          ),
          border: InputBorder.none,
          hintText: "Search here...",
        ),
      ),
    );
  }
}
