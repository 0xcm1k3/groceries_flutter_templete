// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes
import 'package:app3/screens/home_page/components/categoriesItemWidget.dart';
import 'package:flutter/material.dart';


class categoriesWidget extends StatelessWidget {
  const categoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          categoriesItemWidget(category: "Vegetables",imgSrc: "assets/veg_icon.png",padding: 0.0,action:(){Navigator.pushNamed(context, "/products",arguments: {"type": "vegetables"});}),
          categoriesItemWidget(category: "Fruits",imgSrc: "assets/fruits_icon.png",action:(){Navigator.pushNamed(context, "/products",arguments: {"type": "fruits"});}),
          categoriesItemWidget(category: "Nuts",imgSrc: "assets/nuts_icon.png",action:(){Navigator.pushNamed(context, "/products",arguments: {"type": "nuts"});}),
          categoriesItemWidget(category: "Spices",imgSrc: "assets/spices_icon.png",action:(){Navigator.pushNamed(context, "/products",arguments: {"type": "spices"});}), 
      ],
      ),
    );
  }
}

