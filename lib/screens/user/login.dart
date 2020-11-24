import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nomad_project/screens/bottomtabbar/navbar.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:
               SingleChildScrollView(
            child: Form(
          child: Column(
            children: [ 
              Padding(
                padding: EdgeInsets.only(top:256,right: 20,left: 20),
                child: TextFormField(
                 
                  decoration: InputDecoration(
                    hintText: "Email",
                    suffixIcon: Icon(Icons.mobile_screen_share)
                    
                  ),
                ),
              ),

                Padding(
                  padding: EdgeInsets.only(top:16.0,left: 20,right: 20),
                  child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(Icons.mobile_screen_share)
                  ),
              ),
                ),
                 Container(
                padding: EdgeInsets.only(top:12),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CupertinoButton.filled(disabledColor: Colors.red,
                    
                    child: Text("Sign In "), 
                    onPressed: (){
                      auth.signInWithEmailAndPassword(email: _email, password: _password);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Nav()));
                    
                  })
                ),
              ), 
                Container(
                padding: EdgeInsets.only(top:12),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CupertinoButton.filled(disabledColor: Colors.red,
                    
                    child: Text("Forgot password ? click here."), 
                    onPressed: (){
                    
                  })
                ),
              )  
            ]
          ) ,
        ),
      ),
    );
  }
}
