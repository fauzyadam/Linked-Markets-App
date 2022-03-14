import 'package:flutter/material.dart';

class Products extends StatefulWidget {
 
   Products({ Key? key }) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
    var product_list =[
    {
      "name": "wedding",
      "picture": "assets/images/products/wedding.png",
       "price":  "120"
    },
     {
      "name": "kaba",
      "picture": "assets/images/products/kaba.png",
       "price":  "120"
    },
     {
      "name": "wedding",
      "picture": "assets/images/products/wedding.png",
       "price":  "120"
    } 
    ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2), 
  itemBuilder: (BuildContext context, int index){
    return Single_product(
      product_name: product_list[index]['name'],
      Product_picture: product_list[index]['picture'],
      Product_price:  product_list[index]['price'],
    );
  });
  }
}
class Single_product extends StatelessWidget {
 final product_name;
   final Product_picture;
  final Product_price;

  const Single_product({ 
    Key? key,
   required this.product_name,
   required this.Product_picture,
   required this.Product_price
 }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}