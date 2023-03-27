
import 'package:flutter/material.dart';
import 'package:travel_app_ui/theme.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final categoryList = [
    'New',
    'Popular',
    'Most Viewed',
    'Near You',
    'All Places',
  ];

  int currentSelected = 0;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 20,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentSelected = index;
              });
            },
            child: Text(categoryList[index], style:  TextStyle(
               fontSize: 16.0,
               fontWeight: currentSelected == index ? FontWeight.bold : FontWeight.normal,
               color: currentSelected == index ?  primaryColor : Colors.grey
            ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20,),
        itemCount: categoryList.length,
      ),
    );
  }
}