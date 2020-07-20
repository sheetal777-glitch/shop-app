import 'package:flutter/material.dart';
import 'package:shop_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productlist = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'old_price': 120,
      'price': 85,
    },
    {
      'name': 'Red Dress',
      'picture': 'images/products/dress1.jpeg',
      'old_price': 100,
      'price': 50,
    },
    {
      'name': 'Cool hills',
      'picture': 'images/products/hills1.jpeg',
      'old_price': 100,
      'price': 50,
    },
    {
      'name': 'Ladies Blazer ',
      'picture': 'images/products/blazer2.jpeg',
      'old_price': 100,
      'price': 50,
    },
    {
      'name': 'Skirt 1',
      'picture': 'images/products/skt2.jpeg',
      'old_price': 100,
      'price': 50,
    },
    {
      'name': 'Black Dress',
      'picture': 'images/products/dress2.jpeg',
      'old_price': 100,
      'price': 50,
    },
    {
      'name': 'Red hills',
      'picture': 'images/products/hills2.jpeg',
      'old_price': 100,
      'price': 50,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productlist.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Singleproduct(
          productname: productlist[index]['name'],
          productpicture: productlist[index]['picture'],
          productoldprice: productlist[index]['old_price'],
          productprice: productlist[index]['price'],
        );
      },
    );
  }
}

class Singleproduct extends StatelessWidget {
  Singleproduct({
    this.productname,
    this.productpicture,
    this.productoldprice,
    this.productprice,
  });
  final productname;
  final productpicture;
  final productoldprice;
  final productprice;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
//here we are passing the value of the product to the product details page
                  builder: (context) => ProductDetails(
                    productdetailsname: productname,
                    productdetailspicture: productpicture,
                    productdetailsoldprice: productoldprice,
                    productdetailsnewprice: productprice,
                  ),
                ),
              );
            },
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(productname, style: 
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),),
                    ),
                    Text("\$${productoldprice}",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
              child: Image.asset(
                productpicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
