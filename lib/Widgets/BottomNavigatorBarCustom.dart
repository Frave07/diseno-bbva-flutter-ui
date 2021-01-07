import 'package:flutter/material.dart';


class ButtomNavigatorBarCustom extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Container(
         height: 60,
         width: double.infinity,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) ),
           boxShadow: [
             BoxShadow(blurRadius: 8, color: Colors.grey[400])
           ]
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [

              IconButton(
                icon: Transform.rotate(angle: -190.1, child: Icon(Icons.label_outline, size: 33, color: Color(0xff004481))),
                onPressed: null
              ),
              IconButton(
                icon: Icon(Icons.favorite_border, size: 33, color: Color(0xff9CAFC1)),
                onPressed: null
              ),
              IconButton(
                icon: Icon(Icons.add_circle_outline, size: 33, color: Color(0xff9CAFC1)),
                onPressed: () => Navigator.pushNamed(context, 'details')
              ),
              IconButton(
                icon: Icon(Icons.mail_outline, size: 33, color: Color(0xff9CAFC1)),
                onPressed: null
              ),

           ],
         ),
       );
  }
}