import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({
    this.productdetailsname,
    this.productdetailspicture,
    this.productdetailsoldprice,
    this.productdetailsnewprice,
  });
  final productdetailsname;
  final productdetailsnewprice;
  final productdetailsoldprice;
  final productdetailspicture;
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: InkWell(
          onTap:(){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> HomePage(),),);
          } ,
          child: ( Text('Fashapp'))),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productdetailspicture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productdetailsname,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.productdetailsoldprice}",
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.productdetailsnewprice}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

//          ======= the first buttons ======
          Row(
            children: <Widget>[
              //           ======= the size button =======
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Size"),
                          content: Text("Choose the size"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Close",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Color"),
                          content: Text("Choose the color"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Close",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Color'),
                      ),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Qty"),
                          content: Text("Choose the quantity"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Close",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Qty'),
                      ),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //          ======= the second buttons ======
          Row(
            children: <Widget>[
              //           ======= the size button =======
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy Now'),
                ),
              ),

              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {}),

              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {}),
            ],
          ),
            Divider(),
          ListTile(
            title: Text("Product details"),
            subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),

          Row(
            children: <Widget>[
              Padding(padding: 
              const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Produt name",
              style: TextStyle(
                color: Colors.grey,
              ),),),
              Padding(padding: 
              const EdgeInsets.all(5.0),
              child:Text(widget.productdetailsname) ,),
            ],
          ),
//      ======== Product Brand =======
          Row(
            children: <Widget>[
              Padding(padding: 
              const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Produt brand",
              style: TextStyle(
                color: Colors.grey,
              ),),),
              Padding(padding: 
              const EdgeInsets.all(5.0),
              child:Text("Brand X") ,),
            ],
          ),
//       ===== Add the product condition =====
          Row(
            children: <Widget>[
              Padding(padding: 
              const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Produt condition",
              style: TextStyle(
                color: Colors.grey,
              ),),),
              Padding(padding: 
              const EdgeInsets.all(5.0),
              child:Text("New") ,),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Similar Products"),
          ),
          //Similar Products Section
          Container(
            height: 340.0,
            child: SimilarProducts(),
          ),


        ],
      ),
    );
  }
}


class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
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
        return SimilarSingleproduct(
          productname: productlist[index]['name'],
          productpicture: productlist[index]['picture'],
          productoldprice: productlist[index]['old_price'],
          productprice: productlist[index]['price'],
        );
      },
    );
  }
}

class SimilarSingleproduct extends StatelessWidget {
  SimilarSingleproduct({
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
