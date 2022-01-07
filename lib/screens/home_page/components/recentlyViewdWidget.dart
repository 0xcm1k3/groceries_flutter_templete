// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes
import 'dart:math';
import 'package:app3/screens/services/get_item.dart';
import 'package:app3/screens/services/shoppingServices.dart';
import 'package:flutter/material.dart';
import 'package:app3/screens/home_page/components/recentViewedListWidget.dart';

class recentlyViewdWidget extends StatelessWidget {
  const recentlyViewdWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<int> ids = [
      Random().nextInt(get_length("fruits")),
      Random().nextInt(get_length("fruits")),
      Random().nextInt(get_length("vegetables")),
      Random().nextInt(get_length("fruits")),
      Random().nextInt(get_length("vegetables")),
      Random().nextInt(get_length("nuts"))];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        children: [
          recentViewedItemWidget(product: Product(
            name: get_item("fruits",ids[0],"name"),
            price: get_item("fruits",ids[0], "price"),
            imgSrc: get_item("fruits",ids[0], "photo_url"),
            unit: get_item("fruits",ids[0], "unit"),
            product_id: 0
            ),
            ),
          recentViewedItemWidget(product: Product(
            name: get_item("fruits",ids[1],"name"),
            price: get_item("fruits",ids[1], "price"),
            imgSrc: get_item("fruits",ids[1], "photo_url"),
            unit: get_item("fruits",ids[1], "unit"),
            product_id: 0
            ),
            ),
          recentViewedItemWidget(product: Product(
            name: get_item("vegetables",ids[2],"name"),
            price: get_item("vegetables",ids[2], "price"),
            imgSrc: get_item("vegetables",ids[2], "photo_url"),
            unit: get_item("vegetables",ids[2], "unit"),
            product_id: 0
            ),
            ),
          recentViewedItemWidget(product: Product(
            name: get_item("fruits",ids[3],"name"),
            price: get_item("fruits",ids[3], "price"),
            imgSrc: get_item("fruits",ids[3], "photo_url"),
            unit: get_item("fruits",ids[3], "unit"),
            product_id: 0
            ),
            ),
          recentViewedItemWidget(product: Product(
            name: get_item("vegetables",ids[4],"name"),
            price: get_item("vegetables",ids[4], "price"),
            imgSrc: get_item("vegetables",ids[4], "photo_url"),
            unit: get_item("vegetables",ids[4], "unit"),
            product_id: 0
            ),
            ),
          recentViewedItemWidget(product: Product(
            name: get_item("nuts",ids[5],"name"),
            price: get_item("nuts",ids[5], "price"),
            imgSrc: get_item("nuts",ids[5], "photo_url"),
            unit: get_item("nuts",ids[5], "unit"),
            product_id: 0
            ),
            ),
        ],
    
      ),
    );
  }
}

