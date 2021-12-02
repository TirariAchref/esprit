import 'package:flutter/material.dart';
class PanierWidget extends StatefulWidget {
  const PanierWidget({ Key? key, required this.image, required this.price }) : super(key: key);
final String image;
final String price;

  @override
  State<PanierWidget> createState() => _PanierWidgetState();
}

class _PanierWidgetState extends State<PanierWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
children: [
  Container(
               
                margin: const EdgeInsets.fromLTRB(10, 10, 20, 0),
                child: Image.asset(widget.image, width: 100, height: 110)
            ),
            Text(widget.price)
],
      ),
    )
        
          
     ;
  }
}