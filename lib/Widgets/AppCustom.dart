import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget 
{

  final Widget widget;
  final double size;
  final double top;
  
  AppBarCustom({ this.widget, this.size, this.top = 50 });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: size,
      child: widget
    );
  }
}