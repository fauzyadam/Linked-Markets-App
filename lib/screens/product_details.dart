import 'package:flutter/material.dart';
import 'package:linked_markets_app/materials/products.dart';
import 'package:linked_markets_app/view/home_page.dart';


class ProductDetail extends StatefulWidget {

  final product_detail_name;
  final product_detail_picture;
  final product_detail_price;

  const ProductDetail({ 
    Key? key,
     required this.product_detail_name,
     required this.product_detail_picture,
     required this.product_detail_price,
    
     }): super(key: key);
@override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.amber,
        title: Center(
          child:  InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context)=> const HomePage())
              );
            },
            child: const Text(
              "Linked MarketsApp",
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
                color: Colors.white,
                ) ,
              ),
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
               color:Colors.white,
               child: ListTile(
                 leading: Text(
                   widget.product_detail_name,
                   style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                   ),
                 title: Row(
                   children: [
                     Expanded(
                       child: Text(
                         "${widget.product_detail_price}",
                         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                         )
                       )
                   ],
                 ),
               ),
             ),
             ),
          ),
          // our first buttons
         Row(
           children: [
             Expanded(
               child: MaterialButton(
                 onPressed: (){
               showDialog(context: context, 
               builder: (context){
                 return AlertDialog(
                   title: const Text("Size"),
                   content: const Text("Choose your size"),
                   actions: [
                     MaterialButton(onPressed: (){
                       Navigator.of(context).pop(context);
                     },
                     child: const Text("close"),
                     ),
                   ],
                 );
               });
                
               },
               color: Colors.white,
               textColor:Colors.grey,
               child: Row(
                 children: const [
                   Expanded(
                     child: Text("Size")),
                   Expanded(
                     child: Icon(Icons.arrow_drop_down),
                     ),  
                 ],
               ),
               )
               ),
               Expanded(
               child: MaterialButton(
                 onPressed: (){
               showDialog(context: context, 
               builder: (context){
                 return AlertDialog(
                   title: Text("Color"),
                   content: Text("Select your color"),
                   actions: [
                     MaterialButton(onPressed: (){
                       Navigator.of(context).pop(context);
                     },
                     child: Text("close"),
                     ),
                   ],
                 );
               });
              
               },
               color: Colors.white,
               textColor:Colors.grey,
               child: Row(
                 children: const [
                   Expanded(
                     child: Text("Color")),
                   Expanded(
                     child: Icon(Icons.arrow_drop_down),
                     ),  
                 ],
               ),
               )
               ),
               Expanded(
               child: MaterialButton(onPressed: (){
  
               showDialog(context: context, 
               builder: (context){
                 return AlertDialog(
                   title: Text("Quantity"),
                   content: Text("Specify your quantity"),
                   actions: [
                     MaterialButton(onPressed: (){
                       Navigator.of(context).pop(context);
                     },
                     child: Text("close"),
                     ),
                   ],
                 );
               });
                 },
               color: Colors.white,
               textColor:Colors.grey,
               child: Row(
                 children: const [
                   Expanded(
                     child: Text("Quantity")),
                   Expanded(
                     child: Icon(Icons.arrow_drop_down),
                     ),  
                 ],
               ),
               )
               ),
             ],
         ),
         Row(
           children: [
             Expanded(
               child: MaterialButton(onPressed: (){},
               color: Colors.red,
               textColor:Colors.white,
                child: Text('Order now', ),
               )
               ),
             IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart,  color: Colors.orange,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border ), color: Colors.orange,)
             ],
         ),
         SizedBox(
           height: 15,
         ),
         const ListTile(
           title: Text("product details"),
           subtitle:  Text("A product needs to be relevant: the users must have an immediate use for it. A product needs to be functionally able to do what it is supposed to, and do it with a good quality. what benefits they can derive from it, and what it does difference it does to their lives. Advertising and 'brand building' best do this."),
         ),
          SizedBox(
           height: 15,
         ),
         
         Row(
           children:  [
             Padding(padding: EdgeInsets.fromLTRB(12, 5, 5,5),
             child: Text("Product name", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.grey)
             )
            ),
              Padding(padding: EdgeInsets.all(5.0),
            child: Text(widget.product_detail_name),
            ),
           ]
         ),
         Row(
           children: const[
             Padding(padding: EdgeInsets.fromLTRB(12, 5, 5,5),
             child: Text("Product Brand", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.grey)
             )
            ),
              Padding(padding: EdgeInsets.all(5.0),
            child: Text("Made in Ghana"),
            ),
           ]
         ),
         Row(
           children: const [
             Padding(padding: EdgeInsets.fromLTRB(12, 5, 5,5),
             child: Text("Product Condition", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.grey)
             )
            ),
            Padding(padding: EdgeInsets.all(5.0),
            child: Text("Newly Made"),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:EdgeInsets.all(8.0)
              )
           ]
         ),
         //SIMILAR PRODUCTS SECTION
         Container(
           height: 360,
           child: Similar_Products(),
         )
        ],
    )
    );
    }
    }
    class Similar_Products extends StatefulWidget {
      const Similar_Products({ Key? key }) : super(key: key);
    
      @override
      State<Similar_Products> createState() => _Similar_ProductsState();
    }
    
    class _Similar_ProductsState extends State<Similar_Products> {
      var product_list =[
    {
      "name": " Northern Kente",
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

{
      "name": " Northern kente",
      "picture": 'assets/images/hajj faith 3.png',
       "price":  "120"
    },

 {
      "name": " ankara",
      "picture": 'assets/images/hajj faith 2.png',
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
    return Similar_Single_Product(
      product_name: product_list[index]['name'],
      Product_picture: product_list[index]['picture'],
      Product_price:  product_list[index]['price'],
    );
  });
  }
    }

    class Similar_Single_Product extends StatelessWidget {
 final product_name;
   final Product_picture;
  final Product_price;

  const Similar_Single_Product({ 
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
            onTap:() {
            Navigator.of(context).push(
              MaterialPageRoute(
                // passing the values of the products product details screen
                builder: (BuildContext constext)=> 
                 ProductDetail(
                  product_detail_name: product_name, 
                  product_detail_picture: Product_picture, 
                  product_detail_price: Product_price,
                  ))
            );
            },
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