import 'package:flutter/material.dart';
import 'package:nomad_project/screens/bottomtabbar/navbar.dart';
import 'package:nomad_project/screens/user/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nomad_project/screens/user/register.dart';



void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themedata(),
      initialRoute: 'register',
      home: Nav(),
      routes: {
        'register': (context) => Register(),
        'login':(context) => Login(),
      },

    );
  }

  ThemeData themedata(){
    return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black)
          ),
 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  }
}


