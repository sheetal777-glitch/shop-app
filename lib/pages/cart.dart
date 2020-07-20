import 'package:flutter/material.dart';

//my imports
import 'package:shop_app/components/cart_products.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: Text('Cart'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), 
          onPressed: (){}),
        ],
      ),
      body: CartProducts(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total:"),
                subtitle: Text("\$230"),
              ),),

              Expanded(child: MaterialButton(
                onPressed: (){},
                child: Text('Check out',
                style: TextStyle(
                  color: Colors.white,
                ),),
                color: Colors.redAccent,),),
          ],
        ),
      ),
    );
  }
}