import 'package:flutter/material.dart';


class TarjetaBlanca extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Transform.rotate(
        angle: -278.02,
        child: Container(
          height: 10,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(blurRadius: 4, color: Colors.black12)
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset('Assets/logo2.png', height: 40),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Image.asset('Assets/chip.png', height: 40),
              ),
              SizedBox(height: 25),

              Padding(
                padding: EdgeInsets.only(left: 18.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('*623979', style: TextStyle(color:  Color(0xff004481), fontSize: 16)),
                    Image.asset('Assets/visa2.png', height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}