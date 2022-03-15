import 'package:flutter/material.dart';
 
 //creation of a class called products

class Products extends StatefulWidget {
 
   Products({ Key? key }) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
    var product_list =[
    {
      "name": " wedding",
      "picture": 'assets/images/hajj faith 3.png',
       "price":  "120"
    },
     {
      "name": " ankara",
      "picture": 'assets/images/hajj faith 2.png',
       "price":  "120"
    },
    {
      "name": " casual wear",
      "picture": 'assets/images/hajj faith 6.png',
       "price":  "120"
    },
    {
      "name": " dress",
      "picture": 'assets/images/hajj faith 1.png',
       "price":  "120"
    }, 
    
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
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap:() {},
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(product_name, 
                  style: const TextStyle(
                   fontSize: 10, fontWeight: FontWeight.bold
                   ),
                  ),
                  title: Text("Contact Designer",
                 style: const TextStyle(
                   fontSize: 10, fontWeight: FontWeight.bold,
                   color: Colors.red,
                   ),
                  ),
                 subtitle: Text("0552871208",
                 style: const TextStyle(
                   fontSize: 10, fontWeight: FontWeight.bold,
                   color: Colors.black,
                   decoration: TextDecoration.lineThrough,
                   ),
                 ),
                ),
              ),
              child: Image.asset(Product_picture,
              fit: BoxFit.cover,
              )),
          ),
          
           ),
        ),
    );
  }
}