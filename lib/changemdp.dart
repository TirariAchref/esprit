import 'package:flutter/material.dart';
class changeMDP extends StatefulWidget {
  const changeMDP({Key? key}) : super(key: key);

 

  @override
  State<changeMDP> createState() => _changeMDPState();
}

class _changeMDPState extends State<changeMDP> {
  late String? username;
  late String? password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("reinitialiser le mot de passe"),
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
              child: const Text("reinitialiser le mot de passe"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              
              ),
              
              ),
           
            
           
          ],
        ),
      ),
    );
  }
}