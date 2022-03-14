import 'package:flutter/material.dart';

// my import
import 'package:linked_markets_app/materials/horizontal_listview.dart';
import 'package:linked_markets_app/materials/products.dart';

class horizontalList extends StatefulWidget {
  const horizontalList({ Key? key }) : super(key: key);

  @override
  State<horizontalList> createState() => _horizontalListState();
}

class _horizontalListState extends State<horizontalList> {
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 80,
     child: ListView(
       scrollDirection: Axis.horizontal,
       children: const [
       Category(image_location: 'assets/images/hajj faith 1.png', 
       image_caption: 'dress'),
        Category(image_location: 'assets/images/hajj faith 2.png', 
       image_caption: 'ankara'),
       Category(image_location: 'assets/images/hajj faith 3.png', 
       image_caption: 'wedding'),
   Category(image_location: 'assets/images/hajj faith 4.png', 
       image_caption: 'casual'),
       Category(image_location: 'assets/images/hajj faith 6.png', 
       image_caption: 'casual wear'),
       ],
     ), 
    );
  }
}



class Category extends StatelessWidget {
final String image_location;
final String image_caption;

const Category({
  Key? key,
   required this.image_location,
   required this.image_caption,
}):super(key: key);
  
 @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.all(8.0),
    child: InkWell(
      onTap:(){},
      child: Container(
        width: 100.0,
        child: ListTile(
          title: Image.asset(image_location,width: 100, height: 80,),
          subtitle: Text(image_caption),
        ),
      ),
    )
    );
      
    
  }
}






