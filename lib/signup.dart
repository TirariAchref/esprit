import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String? username;
  late String? password;
  late String? email;
 
  late String? naissance;
  late String? address;

final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
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
                onSaved: (text){
                  username = text;
                },
                validator: ( String? value){
                 if(value!.isEmpty){
                   return 'Please put your Username';
      
                 }
                   return null;
                },
                  keyboardType: TextInputType.text,
                decoration:const InputDecoration(
                    border: OutlineInputBorder(),
                     labelText: "Username"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child:  TextFormField(
                  onSaved: (text){
                  email = text;
                },
                  validator: ( String? value){
                    RegExp emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                 if(value!.isEmpty|| !emailValid.hasMatch(value)){
                   return 'Please put your Email';
      
                 }
                   return null;
                },
                  keyboardType: TextInputType.emailAddress,
                decoration:const InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: "Email"),
              ),
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
                    labelText: "Mot de passe"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child:  TextFormField(
                  onSaved: (text){
                  naissance = text;
                },
                  validator: ( String? value){
                 if(value!.isEmpty || int.parse(value)>2021){
                   return 'Please put your annee';
      
                 }
                   return null;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: "Année de naissance",
                    
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("S'inscrire"),
                 onPressed: () {
                         // Validate returns true if the form is valid, or false otherwise.
                         if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          showDialog(context: context, 
                          builder: (_){
                            return AlertDialog(
                              title:const Text("Information") ,
                              content: Text("username : " + username! + "\n email : " +email! +
                              "\n password : " + password!+
                              "\n naissance : " + naissance! +
                              "\n address : " + address!),

                            );
                          });
    }
  },
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  child: const Text("Annuler"),
                  onPressed: () {
                 
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
