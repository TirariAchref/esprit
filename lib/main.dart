import 'package:flutter/material.dart';
import 'product_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "store",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("G-Store ESPRIT"),
        ),
        body: Column(
          children: const [
            ProductInfo("assets/images/dmc5.jpg", "Devil May Cry 5", 200),
            ProductInfo("assets/images/re8.jpg", "Resident Evil VIII", 200),
            ProductInfo("assets/images/nfs.jpg", "Need For Speed Heat", 100),
            ProductInfo("assets/images/rdr2.jpg", "Read Dead Redemption 2", 150),
            ProductInfo("assets/images/fifa.jpg", "Fifa 2020", 100),
            //ProductInfo("assets/images/minecraft.jpg", "minecraft", 200),
          ],
        ),
      ),
    );
  }

}