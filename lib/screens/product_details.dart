import 'package:flutter/material.dart';
import 'package:linked_markets_app/materials/products.dart';
import 'package:linked_markets_app/view/home_page.dart';

class ProductDetail extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_price;
  final product_detail_colors;
  final product_detail_colorId;
  final product_detail_sizes;
  final product_detail_onSizeSelected;
  final product_detail_selectedSize;

  const ProductDetail(
      {Key? key,
      required this.product_detail_name,
      required this.product_detail_picture,
      required this.product_detail_price,
      required this.product_detail_colors,
      required this.product_detail_colorId,
      required this.product_detail_sizes,
      required this.product_detail_selectedSize,
      required this.product_detail_onSizeSelected})
      : super(key: key);
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List<String> colors = [
    "Pink",
    "White",
    "Black",
    "Move",
    "Purple",
    "Wine",
    "Blue",
    "Green",
  ];
  List<String> sizes = [
    "M",
    "S",
    "L",
    "XL",
  ];

  List<String> selected = ["black", "pink", "white"];
  var sizeId;
  List<String> selectedSize = ["S", "L", "M"];

  @override
  Widget build(BuildContext context) {
    List<String> sizes = [
      "M",
      "S",
      "L",
      "XL",
    ];
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.amber,
          title: Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const HomePage()));
              },
              child: const Text(
                "Hajjfaith Stlyelish Circle",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
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
        body: ListView(
          children: [
            Container(
              height: 300,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(
                      widget.product_detail_name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    title: Row(
                      children: [
                        Expanded(
                            child: Text(
                          "${widget.product_detail_price}",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<int>(
                      elevation: 2,
                      dropdownColor: Colors.amber,
                      items: sizes.map((s) {
                        return DropdownMenuItem<int>(
                          child: Text(
                            s,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                            ),
                          ),
                          value: sizes.indexOf(s),
                        );
                      }).toList(),
                      value: sizeId,
                      onChanged: (secilenOncelikId) {
                        setState(() {
                          sizeId = secilenOncelikId;
                        });
                      },
                      hint: const Text(
                        "Select Size",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<int>(
                            elevation: 2,
                            dropdownColor: Colors.amber,
                            items: colors.map((c) {
                              return DropdownMenuItem<int>(
                                child: Text(
                                  c,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                  ),
                                ),
                                value: colors.indexOf(c),
                              );
                            }).toList(),
                            value: sizeId,
                            onChanged: (secilenOncelikId) {
                              setState(() {
                                sizeId = secilenOncelikId;
                              });
                            },
                            hint: const Text(
                              "Select Color",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: MaterialButton(
                  onPressed: () {},
                  color: Colors.amber,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Row(
                    children: const [
                      Expanded(child: Text("Qty")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                )),
              ],
            ),

            Row(
              children: [
                Expanded(
                    child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text(
                    'Order now',
                  ),
                )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.orange,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                  color: Colors.orange,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            //SIMILAR PRODUCTS SECTION
            Container(
              height: 360,
              child: const Similar_Products(),
            ),
          ],
        ));
  }
}

class Similar_Products extends StatefulWidget {
  const Similar_Products({Key? key}) : super(key: key);

  @override
  State<Similar_Products> createState() => _Similar_ProductsState();
}

class _Similar_ProductsState extends State<Similar_Products> {
  var product_list = [
    {
      "name": " Northern Kente",
      "picture": 'assets/images/hajj faith 3.png',
      "price": "120"
    },
    // {
    //   "name": " ankara",
    //   "picture": 'assets/images/hajj faith 2.png',
    //   "price": "120"
    // },
    {
      "name": " casual wear",
      "picture": 'assets/images/hajj faith 6.png',
      "price": "120"
    },
    {
      "name": " dress",
      "picture": 'assets/images/hajj faith 1.png',
      "price": "120"
    },
    // {
    //   "name": " ankara",
    //   "picture": 'assets/images/hajj faith 2.png',
    //   "price": "120"
    // },
    // {
    //   "name": " ankara",
    //   "picture": 'assets/images/hajj faith 2.png',
    //   "price": "120"
    // },
    // {
    //   "name": " ankara",
    //   "picture": 'assets/images/hajj faith 2.png',
    //   "price": "120"
    // },
    {
      "name": " ankara",
      "picture": 'assets/images/hajj faith 2.png',
      "price": "120"
    },
    {
      "name": " Northern Kente",
      "picture": 'assets/images/hajj faith 3.png',
      "price": "120"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_Single_Product(
            product_name: product_list[index]['name'],
            Product_picture: product_list[index]['picture'],
            Product_price: product_list[index]['price'],
            Product_color: product_list[index]['color'],
            Product_colorId: product_list[index]['selectedSize'],
            Product_selectedSize: product_list[index]['colorId'],
            Product_size: product_list[index]['size'],
            Product_onsizeSelected: product_list[index]['onSizeSelected'],
          );
        });
  }
}

class Similar_Single_Product extends StatelessWidget {
  final product_name;
  final Product_picture;
  final Product_price;
  final Product_color;
  final Product_colorId;
  final Product_size;
  final Product_selectedSize;
  final Product_onsizeSelected;

  const Similar_Single_Product(
      {Key? key,
      required this.product_name,
      required this.Product_picture,
      required this.Product_price,
      required this.Product_color,
      required this.Product_colorId,
      required this.Product_selectedSize,
      required this.Product_size,
      required this.Product_onsizeSelected})
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
                        product_detail_selectedSize: Product_selectedSize,
                        product_detail_sizes: Product_size,
                        product_detail_onSizeSelected: Product_onsizeSelected,
                      )));
            },
            child: GridTile(
                // footer: Container(
                //   color: Colors.white,
                //   child: ListTile(
                //     leading: Text(
                //       product_name,
                //       style: const TextStyle(
                //           fontSize: 10, fontWeight: FontWeight.bold),
                //     ),
                //     title: const Text(
                //       "Contact Designer",
                //       style: TextStyle(
                //         fontSize: 10,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.red,
                //       ),
                //     ),
                //     subtitle: const Text(
                //       "0552871208",
                //       style: TextStyle(
                //         fontSize: 10,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.black,
                //       ),
                //     ),
                //   ),
                // ),
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
