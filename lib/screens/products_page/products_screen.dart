// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, file_names, deprecated_member_use, library_prefixes
import 'package:app3/screens/products_page/components/bottomCheckoutNavWidget.dart';
import 'package:app3/screens/products_page/components/itemViewWidget.dart';
import 'package:app3/screens/services/get_item.dart';
import 'package:app3/screens/services/shoppingServices.dart' as shoppingServices;
import 'package:flutter/material.dart';
import 'package:app3/components/default_settings.dart' as default_settings;

class Products extends StatefulWidget {
  Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  double totalPrice=(shoppingServices.total<0)?0:shoppingServices.total;
  int totalItems=shoppingServices.ShoppingCart.items_in_cart;
  updateTotal(varTotal){
    setState(() {
    shoppingServices.total+=varTotal;
    totalPrice=shoppingServices.total;
    });
    
  }
  updateItemsInCart(varTotalItems){
    setState(() {
    totalItems = varTotalItems;
    });    
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Map args = ModalRoute.of(context)!.settings.arguments as Map;
    String productsType = args["type"];
    return Scaffold(
      backgroundColor: default_settings.kBgColor.withOpacity(0.98),
      body: SafeArea(
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
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
            Text(productsType.toUpperCase(),
            style: TextStyle(
            color: default_settings.kTextColor,
            fontSize: 23,
            fontFamily: "Inter-SemiBold",
            letterSpacing: 2
            ),),
            Spacer(flex:2),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search_rounded),
              ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.format_list_bulleted),
              )  
              
        ],
      ),
            SizedBox(height: 20,),
            GridView.builder(
              clipBehavior: Clip.none,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 30,
                mainAxisExtent: 300,
                
              ),
              itemCount: get_length(productsType),
              itemBuilder: (BuildContext context, int index) {
                return itemView(product: shoppingServices.Product(
                  name: get_item(productsType, index, "name"),
                  price: get_item(productsType, index, "price"),
                  unit: get_item(productsType, index, "unit"),
                  imgSrc: get_item(productsType, index, "photo_url"),
                  product_id: get_item(productsType, index, "id"),
                  ),
                  action: [updateTotal,updateItemsInCart],
                );
              },
            ),
              
              ],
            ),
          ),
        )
        
        ),
        bottomNavigationBar: (totalPrice!=0)?bottomCheckoutNav(total:totalPrice,totalItems:totalItems,action:[updateTotal,updateItemsInCart]):null
    );
  }
}

