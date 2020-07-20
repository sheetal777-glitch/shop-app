import 'package:flutter/material.dart';


class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var Products_on_the_cart = [
     {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'price': 85,
      'size':'M',
      'color':'Red',
      'quantity': 1,
      
    },
    {
      'name': 'Red Dress',
      'picture': 'images/products/dress1.jpeg',
      'price': 80,
      'size':'M',
      'color':'Red',
      'quantity': 1,
    },
    {
      'name': 'Cool hills',
      'picture': 'images/products/hills1.jpeg',
      'price': 50,
      'size':'7',
      'color':'Maroon',
      'quantity': 1,
    },
    {
      'name': 'Ladies Blazer ',
      'picture': 'images/products/blazer2.jpeg',
      'price': 50,
      'size':'M',
      'color':'Black',
      'quantity': 1,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return SingleCartProduct(
          cartproductname: Products_on_the_cart[index]['name'],
          cartproductcolor: Products_on_the_cart[index]['color'],
          cartproductpicture: Products_on_the_cart[index]['picture'],
          cartproductprice: Products_on_the_cart[index]['price'],
          cartproductsize: Products_on_the_cart[index]['size'],
          cartproductquantity: Products_on_the_cart[index]['quantity'],
        );
      });
  }
}

class SingleCartProduct extends StatelessWidget {
  SingleCartProduct({
    this.cartproductname,
    this.cartproductpicture,
    this.cartproductprice,
    this.cartproductsize,
    this.cartproductcolor,
    this.cartproductquantity,
  });
  final cartproductname;
  final cartproductpicture;
  final cartproductprice;
  final cartproductsize;
  final cartproductcolor;
  final cartproductquantity;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

      //======leading section=========
        leading: Image.asset(cartproductpicture),
        // ==== title section ======
        title: Text(cartproductname),
        // ======= subtitle section =======
        subtitle: Column(
          children: <Widget>[
            //row inside column
            Row(
              children: <Widget>[
                //this section is for the size of the product
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Size:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cartproductsize,
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),),
                ),
//         ========== this section is for product color =======
                 Padding(
                  padding: 
                  const EdgeInsets.fromLTRB(60.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cartproductcolor,
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),),
                )
              
              ],
            ),

            // ===== This section is for the product price =====
            Container(
              alignment: Alignment.topLeft,
              child: Text("\$$cartproductprice",
              style: TextStyle(
                color: Colors.redAccent, 
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),),
              ),
          ],
        ),
      ),
    );
  }
}