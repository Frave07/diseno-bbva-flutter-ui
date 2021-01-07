import 'package:flutter/material.dart';


class MiniTarjeta extends StatelessWidget
{

  final Color color;
  final String numero;
  final String logo;

  const MiniTarjeta({this.color, this.numero, this.logo});

 @override
 Widget build(BuildContext context)
 {
    return Padding(
        padding: const EdgeInsets.only(left:15.0),
        child: Container(
          height: 140,
          width: 250,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(logo, height: 40),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Image.asset('Assets/chip.png', height: 40),
              ),

              Padding(
                padding: EdgeInsets.only(left: 18.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(numero, style: TextStyle(color: Colors.white, fontSize: 16)),
                    Image.asset('Assets/visa.png', height: 40),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}