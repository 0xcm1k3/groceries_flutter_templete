// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes
import 'package:app3/components/customBtnWidget.dart';
import 'package:app3/screens/services/shoppingServices.dart';
import 'package:flutter/material.dart';
import 'package:app3/components/default_settings.dart' as default_settings;

class showItemsInCart extends StatelessWidget {
  final double total;
  final Map<String,Function> actions;
  const showItemsInCart({
    required this.actions,
    required this.total,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: basketItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: Image(image: AssetImage(basketItems[index].imgSrc),),
                  title: Text(basketItems[index].name,
                  style: TextStyle(
                    fontFamily: "Inter-SemiBold",
                    color: default_settings.kTextColor
                  ),
                  ),
                  subtitle: Text(
                    "1 ${basketItems[index].unit}",
                    style: TextStyle(
                    fontFamily: "Inter-Medium",
                    color: default_settings.kSubTextColor
                    ),
                    
                    ),
                  trailing: IconButton(
                    onPressed: (){
                      actions["remove"]!(index);
                    },
                    icon:Icon(
                      Icons.remove_rounded,
                      color: default_settings.kSecondaryColor,)
                      ),

                ),
                Divider(thickness: 1,)
              ],
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "TOTAL",
                style: TextStyle(
                  fontFamily: "Inter-SemiBold",
                  fontSize: 20,
                  color: default_settings.kTextColor
                ),
                ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                "\$$total",
                style: TextStyle(
                  fontFamily: "Inter-SemiBold",
                  fontSize: 20,
                  color: default_settings.kTextColor
                ),
                ),
            ),
          ],
        ),
        SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              customButton(
                txtColor: default_settings.kSecondaryColor,
                bgColor: Colors.white,
                brderColor: default_settings.kSecondaryColor,
                btnText: "CLEAR",
                action: actions["clearBasket"]!,
                
                ),
            SizedBox(width: 25,),
            customButton(
                txtColor: Colors.white,
                bgColor: default_settings.kSecondaryColor,
                btnText: "CHECKOUT",
                action: (){},
                
                ),
            
          ],
        ),
      ],
    );
  }
}

