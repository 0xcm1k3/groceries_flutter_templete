// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes
import 'package:flutter/material.dart';
import 'package:app3/components/default_settings.dart' as default_settings;

class customBottomNav extends StatelessWidget {
  final int pageIndex;
  final Function action;
  const customBottomNav({
    required this.action,
    required this.pageIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,     
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
          child: BottomNavigationBar(
            currentIndex: pageIndex,
            onTap: (index)=>action(index),
              items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "tes"),
          //BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: "tes"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "tes"),
              ],
              backgroundColor: default_settings.kPrimaryColor.withOpacity(0.9),
              elevation: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedFontSize : 0,
              unselectedFontSize :0,
              iconSize: 35,
              selectedItemColor: Colors.green[600],
              unselectedItemColor: default_settings.kSecondaryColorLight,
              
            ),
        ),
    );
  }
}

