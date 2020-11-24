import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nomad_project/screens/bottomtabbar/navbar.dart';
import 'package:nomad_project/screens/user/login.dart';

class Register extends StatefulWidget {
  static String id = 'register';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: SingleChildScrollView(
            child: Form(
          child: Column(
  
            children: [ 
              Container(decoration: BoxDecoration(shape: BoxShape.circle),),
              Padding(
                padding: EdgeInsets.only(top:256,left: 20,right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    
                    hintText: "Phone Number(optional)",
                    suffixIcon: Icon(Icons.mobile_screen_share)
                  ),
                ),
              ),
                Padding(
                  padding:  EdgeInsets.only(top:16,left: 20,right: 20),
                  child: TextFormField(
                  onChanged: (value){
                    setState(() {
                      _email = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Email",
                    suffixIcon: Icon(Icons.mobile_screen_share)
                  ),
              ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:16.0,left: 20,right: 20),
                  child: TextFormField(
                 onChanged: (value){
                    setState(() {
                      _password = value.trim();
                    });
                  }, 
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
                    
                    child: Text("Sign Up "), 
                    onPressed: (){
                      auth.createUserWithEmailAndPassword(email: _email, password: _password);
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
                    child: Text("Have an Account ? Click Here "), 
                    onPressed: (){
                      Navigator.pushNamed(context, 'login');
                      
                    
                  })
                ),
              ), 
            ]   
          ) ,
          
        ),
      ),
    );
  }
}
