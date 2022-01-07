// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:app3/components/default_settings.dart' as default_settings;

class discountCardWidget extends StatelessWidget {
  final int dicountPercentage;
  final String discountCategory,imgSrc,validUntil;
  final double padding;
  final Color bg_color,innerColor,primaryTextColor,secondaryTextColor;
  const discountCardWidget({
    required this.dicountPercentage,
    required this.discountCategory,
    required this.imgSrc,
    required this.validUntil,
    this.bg_color=default_settings.kDiscountBgColor,
    this.innerColor=default_settings.kSecondaryColor,
    this.primaryTextColor=default_settings.kDiscountTextColor,
    this.secondaryTextColor=default_settings.kSecondaryColor,
    this.padding=default_settings.kDefaultPadding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:padding),
      child: Stack(
        overflow: Overflow.clip,
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 170,
            width: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: bg_color,
            ),
            
          ),
          Positioned(
            left: -140,
            child: Transform.rotate(
              angle: 180,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: innerColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                
              ),
              
              
              )
          ),
          Positioned(
                  left: 25,
                  child: Image(
                    image: AssetImage(imgSrc),
                    height: 150,
                    width: 140,
                  ),
                ),
          Positioned(
            right: 20,
            top: 40,
            child: Column(

              children: [

              RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:"$dicountPercentage% Discount\n",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Inter-Black",
                  color: primaryTextColor
                ),
                children: [
                  TextSpan(text: 'ON\n'),
                  TextSpan(text: 'ALL $discountCategory'),
                ]
              )
              ),
              
              ],
            )
              
              
              ),
              Positioned(bottom: 15,right: 10,
              child: Text(
                "Discount valid until $validUntil!",
                style: TextStyle(
                  fontFamily: "Inter-Bold",
                  color: secondaryTextColor,
                  fontSize: 11
                ),
              ))
          
          
                
        ],
      ),
    );
  }
}

