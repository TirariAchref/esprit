import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  late String? password;
  
 
  late String? naissance;
  late String? address;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Parametre de profile"),
      ),
      body: Form(
         key: _formKey,
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("assets/images/minecraft.jpg", width: 460, height: 215)
            ),
     
       
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child:  TextFormField(
                  onChanged: (text){
                  password = text;
                },
                  validator: ( String? value){
                 if(value!.isEmpty){
                   return 'Please put your Password';
      
                 }
                   return null;
                },
                  obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: "Mot de passe actuel"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child:  TextFormField(
                  onSaved: (text){
                  naissance = text;
                },
                  validator: ( String? value){
                 if(value!.isEmpty ){
                   return 'Please put your password';
      
                 }
                   return null;
                },
              obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: "Nouveau Mot de passe",
                    
                    ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child:  TextFormField(
                  onSaved: (text){
                  address = text;
                },
                  validator: ( String? value){
                 if(value!.isEmpty){
                   return 'Please put your Adresse ';
      
                 }
                   return null;
                },
                  maxLines: 4,
                decoration:const InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: "Adresse de facturation"),
              ),
            ),
                 ElevatedButton(
                  child: const Text("Enregistrer"),
                 onPressed: () {
                         // Validate returns true if the form is valid, or false otherwise.
                         if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          showDialog(context: context, 
                          builder: (_){
                            return AlertDialog(
                              title:const Text("Information") ,
                              content: Text(
                              "\n password : " + password!+
                              "\n nouveau password : " + naissance! +
                              "\n address : " + address!),

                            );
                          });
    }
  },
                ),
          ],
        ),
      ),
    );
  }
}