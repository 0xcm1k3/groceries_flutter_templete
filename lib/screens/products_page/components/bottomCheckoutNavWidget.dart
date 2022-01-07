// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes
import 'package:flutter/material.dart';
import 'package:app3/components/default_settings.dart' as default_settings;

class bottomCheckoutNav extends StatelessWidget {
  final double total;
  final int totalItems;
  final List<Function> action;
  const bottomCheckoutNav({
    required this.total,
    required this.totalItems,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,     
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 2,
          blurRadius: 30
        )
      ]
    ), 
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.all(20),
    child:ClipRRect(                                                                    
      borderRadius: BorderRadius.circular(20),                                       
      child: Container(
        padding: EdgeInsets.all(15),
        color: default_settings.kPrimaryColor.withOpacity(0.90),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$$total",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Inter-SemiBold",
                    color: default_settings.kSecondaryColorDark
                  ),
                  ),

                RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: "You have ",
                    style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Inter-SemiBold",
                    color: default_settings.kSubTextColor
                  ),
                  children: [
                    TextSpan(text: "$totalItems item(s)",style: TextStyle(color: default_settings.kSecondaryColorDark)),
                    TextSpan(text: " in your basket"),
                  ]
                  ),
                )
              ],
              ),
              Spacer(flex: 1,),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                color: default_settings.kSecondaryColor,
                borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  "CHECKOUT",
                  style: TextStyle(
                    fontFamily: "Inter-SemiBold",
                    color: Colors.white,
                  ),
                  ),
              )
          ],
        ),
      )
    ),
    );
  }
}

