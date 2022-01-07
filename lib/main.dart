// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print

import 'package:app3/screens/basket_page/basket_screen.dart';
import 'package:app3/screens/home_page/homeScreen.dart';
import 'package:app3/screens/products_page/products_screen.dart';
import 'package:app3/screens/saved_page/saved_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
    initialRoute: "/",
    
    routes: {
      "/":(context)=>Home(),
      "/products":(context)=>Products(),
      "/saved":(context)=>Saved(),
      "/basket":(context)=>Basket()
    },

  ));
