import 'package:flutter/material.dart';

//my imports
import 'package:linked_markets_app/materials/cart_product.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.amber,
          title: const Center(
            child: Text(
              "Cart",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ],
        ),
        body: const Cart_products(),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
            children: [
              const Expanded(
                  child: ListTile(
                title: Text("Total"),
                subtitle: Text('\$100'),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.orange,
                child: const Text(
                  "Make Payment",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ))
            ],
          ),
        ));
  }
}
