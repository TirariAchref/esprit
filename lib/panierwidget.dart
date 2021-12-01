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
    return Row(
     children: [
        Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset(widget.image, width: 100, height: 110)
            ),
            Text(widget.price)
     ],
    );
  }
}