// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use
import 'package:app3/screens/home_page/components/discountCardWidget.dart';
import 'package:flutter/material.dart';

class discountList extends StatelessWidget {
  const discountList({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          discountCardWidget(dicountPercentage:45,discountCategory:"FRUITS",validUntil:"1st of next month",imgSrc:"assets/fruits_icon.png",padding:0),
          discountCardWidget(bg_color: Color(0xFFa4ebfa),innerColor: Color(0xFF742C2C),primaryTextColor: Color(0xFF742C2C),secondaryTextColor: Color(0xFFF7AD5A),dicountPercentage:10,discountCategory:"NUTS",validUntil:"04/02/2022",imgSrc:"assets/nuts_icon.png"), 
        ],
    
      ),
    );
  }
}
