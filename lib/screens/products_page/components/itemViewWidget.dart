// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes
import 'package:app3/screens/products_page/components/addToCartBtnsWidget.dart';
import 'package:app3/components/default_settings.dart' as default_settings;
import 'package:app3/screens/services/shoppingServices.dart';
import 'package:flutter/material.dart';

class itemView extends StatefulWidget {
  final Product product;
  final List<Function> action;
  const itemView({
    required this.action,
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  State<itemView> createState() => _itemViewState();
}

class _itemViewState extends State<itemView> {
  int counter=1;
  editQuantity(int val){
    setState(() {
      if(counter==0 || counter<0){
        counter=1;
      }else{
      counter+=val;
      counter=counter;
      }
      
    });   
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        
      ),
      padding: EdgeInsets.only(top:20),
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Image(
            image: AssetImage(widget.product.imgSrc),
            height: 150,
            width: 150,
          ),
          SizedBox(height: 8,),
          Text(widget.product.name.toUpperCase(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Inter-SemiBold",
            fontSize: 18,
            color: default_settings.kTextColor
          ),
          ),
          RichText(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
            text:TextSpan(
              text:"\$${widget.product.price}",
          
              style: TextStyle(
                fontFamily: "Inter-Medium",
                fontSize: 15,
                color: default_settings.kSecondaryColorDark
               ),
            children: [
              TextSpan(text: ' / ${widget.product.unit}', style: TextStyle(color: default_settings.kSubTextColor)),
            ]
            ),
          ),
          SizedBox(height: 20,),
          addToCartDefault(product: widget.product,action:widget.action)
          //addToCartBtns(action:editQuantity,counter: counter,)
        ],
        ),
    );
  }
}

