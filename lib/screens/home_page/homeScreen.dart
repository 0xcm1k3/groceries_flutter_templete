// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes
import 'package:app3/screens/home_page/components/appbarWidget.dart';
import 'package:app3/screens/home_page/components/categoriesWidget.dart';
import 'package:app3/screens/home_page/components/customBottomNav.dart';
import 'package:app3/screens/home_page/components/discountList.dart';
import 'package:app3/screens/home_page/components/discountSliderWidget.dart';
import 'package:app3/screens/home_page/components/recentlyViewdWidget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex=0;
  @override
  Widget build(BuildContext context) {
    final Size screenSize= MediaQuery.of(context).size;
  bottomNavCallBack(varPageIndex){
    setState(() {
      switch(varPageIndex){
        case 1:{
          Navigator.pushNamed(context, '/saved');
        }
        break;
        case 2:{
          Navigator.pushNamed(context, '/basket');

        }
        break;
        default:{
          pageIndex=0;
        }
      }
    });
  }
    return Scaffold(
      backgroundColor: Color(0xFFF9FDFD),
      body: SafeArea(
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Container(
            padding: EdgeInsets.only(right:screenSize.width * 0.05,left:screenSize.width * 0.05,top:screenSize.height * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appbarWidget(),
                SizedBox(height: 40,),
                categoriesWidget(),
                SizedBox(height: 70,),
                discountList(),
                SizedBox(height: 20,),
                //discountSliderWidget(),
                SizedBox(height: 50,),
                Text(
                  "Recently Viewed",
                  style:TextStyle(
                    fontFamily: "Inter-SemiBold",
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 25,),
                recentlyViewdWidget(),

              ],
        
        
            ),
          ),
        )

    ),
    bottomNavigationBar: customBottomNav(action:bottomNavCallBack,pageIndex:pageIndex)
    );
  }
}

