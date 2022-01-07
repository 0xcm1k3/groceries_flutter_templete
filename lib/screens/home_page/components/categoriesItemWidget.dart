// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes

import 'package:flutter/material.dart';
import 'package:app3/components/default_settings.dart' as defaultSettings;


class categoriesItemWidget extends StatelessWidget {
  final String category,imgSrc;
  final double padding;
  final Function() action;
  const categoriesItemWidget({
    required this.category,
    required this.imgSrc,
    required this.action,
    this.padding=defaultSettings.kDefaultPadding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        padding: EdgeInsets.only(left:padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: defaultSettings.kPrimaryColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image(
                image:AssetImage(imgSrc),
                height: 30,
                width: 30,
                ),
            ),
            Text(
              category,
              style: TextStyle(
                fontFamily: "Inter-Regular",
                fontSize: 13,
                color: Colors.grey.withOpacity(0.5)
              ),
            )
          ],
        ),
      ),
    );
  }
}

