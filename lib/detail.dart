import 'package:flutter/material.dart';

class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Detail product",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Devil May Cry 5"),
        ),
        body: Column(
          children: [
            Image.asset("assets/images/dmc5.jpg")
          ],
        ),
      ),
    );
  }
  
}