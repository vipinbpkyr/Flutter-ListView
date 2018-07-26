import 'package:flutter/material.dart';
import 'package:flutter_list_view/Product.dart';
import 'package:flutter_list_view/ShoppingItemList.dart';
import 'package:flutter_list_view/main.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.product}) :super(key: key);

  List<Product> product;

  @override
  _ShoppingListState createState() {
    return new _ShoppingListState();
  }
}

class _ShoppingListState extends State<ShoppingList> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Product List"),
        ),
        body: new Container(
          padding: new EdgeInsets.all(8.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Expanded(child: new ListView(
                padding: new EdgeInsets.symmetric(vertical: 8.0),
                children: widget.product.map((Product product) {
                  return new ShoppingItemList(product);
                }).toList(),
              )),
              new RaisedButton(onPressed: () {
                for (Product p in widget.product) {
                  if (p.isCheck)
                    print(p.name);
                }
              },
                child: new Text('Save'),
              )
            ],
          ),
        )
    );
  }
}

void main() {

//  runApp(ExpansionTileSample());

//  runApp(new MaterialApp(
//    title: 'Demo App',
//    home: new ShoppingList(product:
//        [
//        new Product('Eggs','assets/person.png',false),
//    new Product('Flour','assets/person.png',false),
//    new Product('Chocolate chips','assets/person.png',false),
//
//    ],),
//  ));
}