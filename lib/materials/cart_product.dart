import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Product_on_the_cart = [
    {
      "name": " Northern Kente",
      "picture": 'assets/images/hajj faith 3.png',
      "price": "120",
      "size": "M",
      "color": "yello",
    },
    {
      "name": " Shoe",
      "picture": 'assets/images/hajj faith 3.png',
      "price": "120",
      "size": "M",
      "color": "gold",
    },
    {
      "name": " Lace",
      "picture": 'assets/images/hajj faith 3.png',
      "price": "120",
      "size": "L",
      "color": " white",
    },
    {
      "name": " Abaya",
      "picture": 'assets/images/hajj faith 3.png',
      "price": "120",
      "size": "M",
      "color": "black",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Product_on_the_cart.length,
        itemBuilder: (BuildContext, index) {
          return Single_Cart_Product(
            cart_product_name: Product_on_the_cart[index]["name"],
            Cart_products_color: Product_on_the_cart[index]["color"],
            Cart_products_qauntity: Product_on_the_cart[index]["qauntity"],
            Cart_products_size: Product_on_the_cart[index]["size"],
            cart_product_price: Product_on_the_cart[index]["price"],
            cart_product_picture: Product_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_Cart_Product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final Cart_products_color;
  final Cart_products_qauntity;
  final Cart_products_size;

  const Single_Cart_Product({
    Key? key,
    required this.cart_product_name,
    required this.cart_product_picture,
    required this.cart_product_price,
    required this.Cart_products_color,
    required this.Cart_products_qauntity,
    required this.Cart_products_size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
          child: ListTile(
        leading: Image.asset(cart_product_picture),
        title: Text(cart_product_name),
        subtitle: Column(
          children: [
            // ROW INSIDE A COLUMN
            Row(
              children: [
                // this section is for the product size
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(Cart_products_size),
                ),
                // this section is for the product color
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(Cart_products_color),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("\$${cart_product_price}"),
            )
          ],
        ),
        trailing: Column(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_drop_up),
              onPressed: () {},
            ),
            Text("1"),
            IconButton(
              icon: const Icon(Icons.arrow_drop_down),
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }
}
