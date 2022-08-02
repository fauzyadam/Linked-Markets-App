import 'package:flutter/material.dart';
import 'package:linked_markets_app/screens/product_details.dart';

//creation of a class called products

class Products extends StatefulWidget {
  Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    // {
    //   " name": " kente Design",
    //   "picture": 'assets/images/hajj faith 3.png',
    //   "price": "120"
    // },
    // {
    //   " name": " Ankara Design",
    //   "picture": 'assets/images/hajj faith 2.png',
    //   "price": "120"
    // },
    // {
    //   "name": " Casual Wear",
    //   "picture": 'assets/images/hajj faith 1.png',
    //   "price": "120"
    // },
    // {
    //   "name": " casual wear",
    //   "picture": 'assets/images/hajj faith 6.png',
    //   "price": "120"
    // },
    {
      "name": "kente Design",
      "picture": 'assets/images/hajj faith 3.png',
      "price": "120"
    },
    // {
    //   "name": " ankara Design",
    //   "picture": 'assets/images/hajj faith 2.png',
    //   "price": "120"
    // },
    // {
    //   "name": "Kente Design",
    //   "picture": 'assets/images/hajj faith 3.png',
    //   "price": "120"
    // },
    // {
    //   "name": " Ankara Design",
    //   "picture": 'assets/images/hajj faith 2.png',
    //   "price": "120"
    // },
    // {
    //   "name": " Casual Wear",
    //   "picture": 'assets/images/hajj faith 1.png',
    //   "price": "120"
    // },
    {
      "name": " casual wear",
      "picture": 'assets/images/hajj faith 6.png',
      "price": "120"
    },
    // {
    //   "name": " kente Design",
    //   "picture": 'assets/images/hajj faith 3.png',
    //   "price": "120"
    // },
    {
      "name": " ankara Design",
      "picture": 'assets/images/hajj faith 2.png',
      "price": "120"
    },
    {
      "name": " Kente Design",
      "picture": 'assets/images/hajj faith 3.png',
      "price": "120"
    },
    // {
    //   "name": " Ankara Design",
    //   "picture": 'assets/images/hajj faith 2.png',
    //   "price": "120"
    // },
    // {
    //   "name": " Casual Wear",
    //   "picture": 'assets/images/hajj faith 1.png',
    //   "price": "120"
    // },
    {
      "name": " casual wear",
      "picture": 'assets/images/hajj faith 6.png',
      "price": "120"
    },
    {
      "name": "kente Design",
      "picture": 'assets/images/hajj faith 3.png',
      "price": "120"
    },
    // {
    //   "name": " ankara Design",
    //   "picture": 'assets/images/hajj faith 2.png',
    //   "price": "120"
    // },
    {
      "name": " casual wear",
      "picture": 'assets/images/hajj faith 6.png',
      "price": "120"
    },
    {
      "name": "kente Design",
      "picture": 'assets/images/hajj faith 3.png',
      "price": "120"
    },
    // {
    //   "name": " ankara Design",
    //   "picture": 'assets/images/hajj faith 2.png',
    //   "price": "120"
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            product_name: product_list[index]['name'],
            Product_picture: product_list[index]['picture'],
            Product_price: product_list[index]['price'],
            Product_colorId: product_list[index]['colorId'],
            Product_color: product_list[index]['color'],
            product_size: product_list[index]['size'],
            product_selectedSize: product_list[index]['selectedSize'],
            Product_onSizeSelected: product_list[index]['onSizeSelected'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final Product_picture;
  final Product_price;
  final Product_color;
  final Product_colorId;
  final product_selectedSize;
  final product_size;
  final Product_onSizeSelected;

  const Single_product(
      {Key? key,
      required this.product_name,
      required this.Product_picture,
      required this.Product_price,
      required this.Product_color,
      required this.Product_colorId,
      required this.product_selectedSize,
      required this.product_size,
      required this.Product_onSizeSelected})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  // passing the values of the products product details screen
                  builder: (BuildContext constext) => ProductDetail(
                        product_detail_name: product_name,
                        product_detail_picture: Product_picture,
                        product_detail_price: Product_price,
                        product_detail_colors: Product_color,
                        product_detail_colorId: Product_colorId,
                        product_detail_selectedSize: product_selectedSize,
                        product_detail_sizes: product_size,
                        product_detail_onSizeSelected: Product_onSizeSelected,
                      )));
            },
            child: GridTile(
                footer: Container(
                  color: Colors.white,
                  // child: ListTile(
                  //   leading: Text(
                  //     product_name,
                  //     style: const TextStyle(
                  //         fontSize: 10, fontWeight: FontWeight.bold),
                  //   ),
                  //   title: Text(
                  //     "Contact Designer",
                  //     style: const TextStyle(
                  //       fontSize: 10,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.red,
                  //     ),
                  //   ),
                  //   subtitle: Text(
                  //     "0552871208",
                  //     style: const TextStyle(
                  //       fontSize: 10,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  // ),
                ),
                child: Image.asset(
                  Product_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
