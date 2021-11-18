import 'package:flutter/material.dart';

import 'product_info.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<GameData> games = [];
  final description =  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
            "sed do eiusmod tempor incididunt ut "
              "labore et dolore magna aliqua. Ut enim ad minim veniam, "
             "quis nostrud exercitation ullamco laboris nisi ut "
               "aliquip ex ea commodo consequat. Duis aute irure dolor "
               "in reprehenderit in voluptate velit esse cillum dolore "
               "eu fugiat nulla pariatur. Excepteur sint occaecat "
           "cupidatat non proident, sunt in culpa qui officia "
              "deserunt mollit anim id est laborum.";
  @override
  void initState() {
    games.add(
      GameData(
        Image:"assets/images/dmc5.jpg" ,
        Title: "Devil May Cry 5" ,
        description: description ,
        price: 200,
        quantity:200
         ),
        );
     games.add(
      GameData(
        Image:"assets/images/re8.jpg" ,
        Title: "Resident Evil VIII" ,
        description: description ,
        price: 200,
        quantity:200
         ),
        );
         games.add(
      GameData(
        Image:"assets/images/nfs.jpg" ,
        Title: "Need For Speed Heat" ,
        description: description ,
        price: 100,
        quantity:200
         ),
        );
         games.add(
      GameData(
        Image:"assets/images/rdr2.jpg" ,
        Title:"Red Dead Redemption II" ,
        description: description ,
        price: 150,
        quantity:200
         ),
        );
           games.add(
      GameData(
        Image:"assets/images/fifa.jpg" ,
        Title:"FIFA 22" ,
        description: description ,
        price: 100,
        quantity:200
         ),
        );
        
        
           
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G-Store ESPRIT"),
      ),
      body: ListView.builder(itemCount: games.length,itemBuilder:(context , index)
      {
        return ProductInfo(games[index].Image, games[index].Title, games[index].price);


      })
    );
  }
}

class GameData {
  final String Image;
  final String Title;
  final int price;
  final String description;
  final int quantity;
  GameData({
    required this.Image,
    required this.Title,
    required this.price,
    required this.description,
    required this.quantity,
  });

  

  @override
  String toString() {
    return 'GameData(Image: $Image, Title: $Title, price: $price, description: $description, quantity: $quantity)';
  }
}
