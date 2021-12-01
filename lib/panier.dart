import 'package:esprit/panierwidget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Panier extends StatelessWidget {
  const Panier({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Panier"),
      ),
      body :  ListView(children: [
        Container(
          child: const Text("Total : 500DT "),
          alignment: Alignment.topRight,
        ),
        const PanierWidget(image: "assets/images/dmc5.jpg", price: "200DT"),
          const PanierWidget(image: "assets/images/re8.jpg", price: "200DT"),
            const PanierWidget(image: "assets/images/nfs.jpg", price: "200DT")
        
      ],),
      
      
    );
  }
}