// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes

import 'package:app3/screens/basket_page/components/itemsInCartWidget.dart';
import 'package:app3/screens/services/shoppingServices.dart' as shoppingServices;
import 'package:flutter/material.dart';
import 'package:app3/components/default_settings.dart' as default_settings;
class Basket extends StatefulWidget {
  Basket({Key? key}) : super(key: key);

  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  double _total=shoppingServices.total;
  clearBasket(bool isClicked){
     setState(() {
      if(isClicked){
        shoppingServices.basketItems.clear();
        shoppingServices.total=0;
        _total=shoppingServices.total;
      }
    });
    
  }
  removeItem(int index){
     setState(() {
      if(shoppingServices.total>0){
        shoppingServices.total-=shoppingServices.basketItems[index].price;
        _total=shoppingServices.total;
      }
      else{
        shoppingServices.total=0;
        _total=shoppingServices.total;
      }
      shoppingServices.basketItems.removeAt(index);
    });
    
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: default_settings.kBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.only(right:screenSize.width * 0.05,left:screenSize.width * 0.05,top:screenSize.height * 0.07),
            child: Column(
              children: [
                Row(
                    children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                  Spacer(flex:2,),
                  Text("BASKET",
                  style: TextStyle(
                  color: default_settings.kTextColor,
                  fontSize: 23,
                  fontFamily: "Inter-SemiBold",
                  letterSpacing: 2
                  ),),
                  Spacer(flex:3,),
                  
                    
                  ],
                ),
                SizedBox(height: 30,),
                (shoppingServices.basketItems.isNotEmpty)?showItemsInCart(actions:{"remove":removeItem,"clearBasket":clearBasket},total:_total):Text("Your shopping cart is empty!",style: TextStyle(fontFamily: "Inter-SemiBold",fontSize: 17),),
                SizedBox(height: 25,),

              ],


            )
          ),


        ),
      ),


    );
  }
}

