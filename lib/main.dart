import 'package:flutter/material.dart';

import 'package:diseno3_bbva/Pages/Login.dart';
import 'package:diseno3_bbva/Pages/Logo.dart';
import 'package:diseno3_bbva/Pages/Home.dart';
import 'package:diseno3_bbva/Pages/Details.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'logo',
      routes: {
        'logo' : ( _ ) => LogoPage(),
        'login' : ( _ ) => LoginPage(),
        'home' : ( _ ) => HomePage(),
        'details' : ( _ ) => DetailsAccountPage(),
      },
    );
  }
}