
import 'package:esprit/authentifier.dart';
import 'package:esprit/changemdp.dart';
import 'package:esprit/panier.dart';

import 'package:esprit/product_info.dart';
import 'package:esprit/profile.dart';

import 'package:flutter/material.dart';

import 'bibliotheque/bibliotheque.dart';

import 'signup.dart';
import 'product_details.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'G-Store ESPRIT',

      // home: Signup(),
 
     

     //  home:ProductDetails("assets/images/rdr2.jpg","Red Dead Redemption II", "fezf",200,10),
      //home: Home(),
     //home: Bibliotheque(),
  // home: Authentifier(),
   //home: Signup(),
  //home: changeMDP(),
home: Panier(),
    );
  }
}