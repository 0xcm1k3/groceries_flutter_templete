// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes
import 'package:app3/screens/services/shoppingServices.dart';
import 'package:flutter/material.dart';
import 'package:app3/components/default_settings.dart' as default_settings;

class addToCartDefault extends StatelessWidget {
  final Product product;
  final List<Function> action;
  const addToCartDefault({
    required this.action,
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        int itemsNum = ShoppingCart().add_item(product);
        action[0](product.price);
        action[1](itemsNum);

      },
      child: Container(
        height: 45,
        width: 150,
        decoration: BoxDecoration(
          color: default_settings.kSecondaryColor,
          borderRadius: BorderRadius.circular(10)
          ),
        alignment: Alignment.center,
        child: Text(
          "Add to cart",
          style: TextStyle(
            fontFamily: "Inter-Regular",
            fontSize: 18,
            color: Colors.white
          ),
          
          ),
      ),
    );
  }
}



class addToCartBtns extends StatelessWidget {
  final int counter;
  final Function action;
  const addToCartBtns({
    required this.counter,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
      Spacer(flex:3),
       GestureDetector(
         onTap: (){
           action(-1);
         },
         child: Container(
           height: 25,
           width: 25,
           alignment: Alignment.center,
           decoration: BoxDecoration(
             color:Colors.white,
             borderRadius: BorderRadius.circular(7),
             border: Border.all(
               color: default_settings.kSecondaryColor
           )
           ),
           child: Icon(
             Icons.remove_rounded,
             size: 20,
             color: default_settings.kSecondaryColor
           ),
         ),
       ),
       Spacer(flex:1),
       Container(
         height: 25,
         width: 25,
         alignment: Alignment.center,
         child: Text(
           "$counter",
           style: TextStyle(
             fontFamily: "Inter-Bold",
             fontSize: 15,
             color:default_settings.kTextColor
           ),
           
           ),
       ),
       Spacer(flex:1),
       GestureDetector(
         onTap: (){
           action(1);
         },
         child: Container(
           height: 25,
           width: 25,
           alignment: Alignment.center,
           decoration: BoxDecoration(
             color:default_settings.kSecondaryColor,
             borderRadius: BorderRadius.circular(7),
             
           ),
           child: Icon(
             Icons.add,
             size: 20,
             color: Colors.white
           ),
         ),
       ),
       Spacer(flex: 3,)
      ],
    );
  }
}