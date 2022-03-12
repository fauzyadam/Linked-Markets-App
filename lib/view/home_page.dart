import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';



class homePgae extends StatefulWidget {
  const homePgae({ Key? key }) : super(key: key);

  @override
  State<homePgae> createState() => _homePgaeState();
}

class _homePgaeState extends State<homePgae> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images:const [
          AssetImage('assets/images/kaba.jpg'),
          AssetImage('assets/images/kaba.jpg'),
          AssetImage('assets/images/todo 4.jpg'),
          AssetImage('assets/images/kaba.jpg'),
          AssetImage('assets/images/kaba.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.amber,
        title: const Center(
          child:  Text(
            "Linked MarketsApp",
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
            IconButton(onPressed: (){}, 
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
            )),
          ],
      ),
      drawer: Drawer(
        child: ListView(
          children:[
            // header
            UserAccountsDrawerHeader(
              accountName: const Text('fauzy'), 
              accountEmail: const Text('fuzyadm1988@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.red
              ),
              ),
        //body
        InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("Home Page"),
            leading: Icon(Icons.home),
          ),
        ),

          InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("My Account"),
            leading: Icon(Icons.person),
          ),
        ),

          InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("My Orders"),
            leading: Icon(Icons.shopping_basket),
          ),
        ),

          InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("Categories"),
            leading: Icon(Icons.dashboard),
          ),
        ),

          InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings),
          ),
        ),

          InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("Enquries"),
            leading: Icon(Icons.help,color: Colors.red, size: 30,),
          ),
        ),

        
          InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("Comments"),
            leading: Icon(Icons.comment_bank,color: Colors.red, size: 30,),
          ),
        ),
          ],
          
        ),
      ),
      body: ListView(
        children: [
         image_carousel 
        ],
      ) ,
    );
  }
}