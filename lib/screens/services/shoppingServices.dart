// ignore_for_file: non_constant_identifier_names, camel_case_types, file_names, avoid_print, avoid_function_literals_in_foreach_calls, use_function_type_syntax_for_parameters

double total=0;
List<Product> basketItems =  [];
            

class Product{
  final String name,imgSrc,unit;
  final double price;
  final bool isAdded;
  final int product_id;
Product(
    {
      required this.product_id,
      required this.price,
      required this.name,
      required this.imgSrc,
      required this.unit,
      this.isAdded =false
    }
  );

}


class ShoppingCart{
static int items_in_cart = basketItems.length;

int add_item(Product product)
{
basketItems.add(product);
return basketItems.length;
}

int remove_item(Product product)
{
basketItems.remove(product);
return basketItems.length;
}

}