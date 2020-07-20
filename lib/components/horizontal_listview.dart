
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imagelocation: 'images/cats/tshirt.png',
            imagecaption: 'shirt',
          ),

          Category(
            imagelocation: 'images/cats/dress.png',
            imagecaption: 'dress',
          ),

          Category(
            imagelocation: 'images/cats/informal.png',
            imagecaption: 'informal',
          ),

           Category(
            imagelocation: 'images/cats/formal.png',
            imagecaption: 'formal',
          ),

          Category(
            imagelocation: 'images/cats/jeans.png',
            imagecaption: 'jeans',
          ),

          Category(
            imagelocation: 'images/cats/accessories.png',
            imagecaption: 'accessories',
          ),

          Category(
            imagelocation: 'images/cats/shoe.png',
            imagecaption: 'shoe',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  Category({this.imagelocation, this.imagecaption});
  final String imagelocation;
  final String imagecaption;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {} ,
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(imagelocation,
            height: 100.0,
            width: 88.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imagecaption,
              style: TextStyle(
                fontSize: 12.0,
              ),),),
          ),
        ),
      ),
    );
  }
}