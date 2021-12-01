import 'package:flutter/material.dart';

class Authentifier extends StatefulWidget {
   const Authentifier({Key? key}) : super(key: key);

  @override
  State<Authentifier> createState() => _AuthentifierState();
}

class _AuthentifierState extends State<Authentifier> {
late String? username;
  late String? password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S'authentifier"),
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
                    border: OutlineInputBorder(), labelText: "Username"),
              ),
            ),
           
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
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
                    border: OutlineInputBorder(), labelText: "Mot de passe"),
              ),
            ),
           
           ElevatedButton(
             onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                         if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          showDialog(context: context, 
                          builder: (_){
                            return AlertDialog(
                              title:const Text("Information") ,
                              content: Text("username : " + username! +
                              "\n password : " + password!
                             ),

                            );
                          });
    }
             },
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
      ),
    );
  }
}