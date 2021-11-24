import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String _image;
  final String _title;
  final String _description;
  final int _price;
  final int quantity;

  const ProductDetails(
      this._image, this._title, this._description, this._price,this.quantity, {Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState(this.quantity);
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity;

  _ProductDetailsState(this.quantity);

 void buy(){
   setState(() {
     quantity --;
   });
 }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Image.asset(widget._image, width: 460, height: 215)
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 50),
            child: Text(widget._description),
          ),
          
          Text(widget._price.toString() + " TND", textScaleFactor: 3),
           Text("We have "+quantity.toString()+ " Quantity left in stock ", textScaleFactor: 1),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.shopping_basket_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Acheter", textScaleFactor: 2)
                
                ],
              ),
              onPressed: buy,
            ),
          )
        ],
      ),
    );
  }
}
