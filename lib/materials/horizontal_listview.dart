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
     height: 120,
     child: ListView(
       scrollDirection: Axis.horizontal,
       children: const [
       Category(image_location: 'assets/images/kente 1.jpg', 
       image_caption: 'kente'),
        Category(image_location: 'assets/images/watch 1.jpg', 
       image_caption: 'watch'),
       Category(image_location: 'assets/images/abaya 1.jpg', 
       image_caption: 'abaya'),
      Category(image_location: 'assets/images/foot 4.jpeg', 
       image_caption: 'foot'),
       Category(image_location: 'assets/images/hajj faith 6.png', 
       image_caption: 'fashion'),
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






