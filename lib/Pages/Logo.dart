import 'package:flutter/material.dart';



class LogoPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return GestureDetector(
        onHorizontalDragStart: (details) => Navigator.pushNamed(context, 'login'),
        child: Scaffold(
        backgroundColor: Color(0xff004481),
         body: Center(
           child: Image.asset('Assets/logo.png')
           ) ,
       ),
    );
  }
}