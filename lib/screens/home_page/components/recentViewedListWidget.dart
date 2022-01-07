// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes

import 'package:app3/screens/services/shoppingServices.dart';
import 'package:flutter/material.dart';
import 'package:app3/components/default_settings.dart' as default_settings;

class recentViewedItemWidget extends StatelessWidget {
  final double padding;
  final Product product;
  const recentViewedItemWidget({
    required this.product,
    this.padding=15,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:padding),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 160,
            width: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.89),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFC2C2C2),
                  blurRadius: 15,
                  spreadRadius: 2
                )
              ]
            ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: -40,
              child: Image(
          image: AssetImage(product.imgSrc),
          height: 90,
          width: 90,
          )
            ),
    
            Positioned(
              top:50,
              bottom: 50,
              child: Container(
                margin: EdgeInsets.only(left:10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                  product.name.toUpperCase(),
                style: TextStyle(
                  fontFamily: "Inter-SemiBold",
                  fontSize: 18,
    
                ),
                ),
                SizedBox(height: 8,),
                Text(
                  "\$${product.price}/${product.unit}",
                style: TextStyle(
                  fontFamily: "Inter-Medium",
                  fontSize: 15,
    
                ),
                ),
    
                ],
                )
              )
            ),
    
            Positioned(
              right: 10,
              bottom: 5,
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: default_settings.kSecondaryColor
                  ),
                  child: Icon(Icons.arrow_forward_ios_outlined,size:19,color: Colors.white,),
                ),
              )
          
            ),
    
        ],
      ),
    );
  }
}

