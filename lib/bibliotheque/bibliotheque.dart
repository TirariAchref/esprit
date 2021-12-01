import 'package:esprit/bibliotheque/bibliothequecard.dart';
import 'package:esprit/home.dart';
import 'package:flutter/material.dart';


class Bibliotheque extends StatefulWidget 

{
  const Bibliotheque({ Key? key }) : super(key: key);

  @override
  State<Bibliotheque> createState() => _BibliothequeState();
}

class _BibliothequeState extends State<Bibliotheque> {

  List<GameData> games =[];
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
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ma bibliotheque"),

      ),
      body:GridView.builder(itemCount: games.length,gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 150,mainAxisSpacing: 5,crossAxisSpacing: 5), itemBuilder: (context,index){
        return CardWidget(games[index].Image,games[index].Title);
      },)
      
    );
  }
}
  //  CardWidget("assets/images/rdr2.jpg","Red Dead Redemption II"),
               