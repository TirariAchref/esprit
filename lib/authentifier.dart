import 'package:flutter/material.dart';

class Authentifier extends StatelessWidget {
   const Authentifier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S'authentifier"),
      ),
      body: ListView(
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Image.asset("assets/images/minecraft.jpg", width: 460, height: 215)
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Username"),
            ),
          ),
         
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Mot de passe"),
            ),
          ),
         
         ElevatedButton(
           onPressed: () {},
            child: const Text("S'authentifier"),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            
            ),
            
            ),
              ElevatedButton(
           onPressed: () {},
            child: const Text("Crée un compte"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
          
            ),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Mot de passe oublié ?"),
              const SizedBox(
                width: 20, 
              ),
             ElevatedButton(
           onPressed: () {},
            child: const  Text("Cliquez ici"),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            onPrimary: Colors.blue,
         
            ),
            ), 
         
            ],
          )
         
        ],
      ),
    );
  }
}