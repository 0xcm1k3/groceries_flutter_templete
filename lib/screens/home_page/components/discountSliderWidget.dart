// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes
import 'package:flutter/material.dart';
import 'package:app3/components/default_settings.dart' as default_settings;


class discountSliderWidget extends StatelessWidget {
  const discountSliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,                
      children: [
        Container(
          height: 11,
          width: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: default_settings.kSecondaryColor
          ),
        ),
        SizedBox(width: 8,),
        Container(
          height: 11,
          width: 11,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[350]
          ),
        )
      ],
    );
  }
}


