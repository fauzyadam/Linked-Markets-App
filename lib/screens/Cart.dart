import 'package:flutter/material.dart';
import 'package:linked_markets_app/screens/Cart.dart';

class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

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
          child:  Text(
            "Cart",
            style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold, 
              color: Colors.white,
              ) ,
            ),
        ),
          actions: [
          IconButton(onPressed: (){}, 
          icon: const Icon(
            Icons.search,
            color: Colors.white,
            )),
          
          ],
      ), 
    );
  }
}