import 'package:flutter/material.dart';


class HeaderHome extends StatelessWidget
{

  final Color color;

  const HeaderHome({ this.color});


 @override
 Widget build(BuildContext context)
 {
    return Container(
      height: 350,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderHomePainter(color),
      ),
    );
  }
}

class _HeaderHomePainter extends CustomPainter
{
  final Color color;

  _HeaderHomePainter(this.color);

  @override
  void paint(Canvas canvas, Size size)
  {
    final paint = new Paint();
    paint.color = color;
    paint.style = PaintingStyle.fill;

    final path = new Path();
    path.lineTo(0, size.height * 0.7);
    path.lineTo( size.width , size.height * 0.7);
    path.lineTo( size.width , 0);


    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true; 
  
    
}