import 'package:esprit/bibliothequecard.dart';
import 'package:flutter/material.dart';


class Bibliotheque extends StatelessWidget 

{
  const Bibliotheque({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ma bibliotheque"),

      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: 
                   CardWidget("assets/images/rdr2.jpg","Red Dead Redemption II"),
               ),
                Expanded(
                child: 
                   CardWidget("assets/images/dmc5.jpg", "Devil May Cry 5"),
               ),
            ],
          ),
           Row(
            children: [
              Expanded(
                child: 
                   CardWidget("assets/images/re8.jpg","Resident Evil VIII"),
               ),
                Expanded(
               child: Container(),
               ),
            ],
          )
        ],
      ),
      
    );
  }
}