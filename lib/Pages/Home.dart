import 'package:flutter/material.dart';

import 'package:diseno3_bbva/Widgets/HeaderHome.dart';
import 'package:diseno3_bbva/Widgets/MiniTarjeta.dart';
import 'package:diseno3_bbva/Widgets/BottomNavigatorBarCustom.dart';
import 'package:diseno3_bbva/Widgets/TarjetaBlanca.dart';


class HomePage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
        backgroundColor: Color(0xffDCE9EF),
        body: ListView(
          padding: EdgeInsets.only(top:0),
          physics: BouncingScrollPhysics(),
          children: [

            Stack(
              children: [

                  HeaderHome(color: Color(0xff004481)),

                  _AppBarCustomHome(widget: Icon(Icons.sort, color: Colors.white, size: 35), size: 20),

                  _AppBarCustomHome(widget: Text('Hola, Frave', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)), size: MediaQuery.of(context).size.width * 0.365),

                  Positioned(
                    top: 50,
                    right: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('Assets/perfil.png'),
                      maxRadius: 18
                    )
                  ),

                  _TarjetaBlancaHeader()


              ],
            ),

            SizedBox(height: 20),

            _ListViewHorizontalIconos(),

            SizedBox(height: 15),

            _TusTarjetas()

         ],
       ),
       bottomNavigationBar: ButtomNavigatorBarCustom()
     );
  }
}

class _TusTarjetas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(15),
      height: 250,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [

          Column(
            children: [
              Padding(
                padding: EdgeInsets.only( top: 20, bottom: 10),
                child: Text('Tus Tarjetas', style: TextStyle(color: Color(0xff004481), fontWeight: FontWeight.bold, fontSize: 16)),
              ),

              MiniTarjeta(color:  Color(0xff004481), numero: '*623979', logo: 'Assets/logo.png'),

              SizedBox(height: 5),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.credit_card, color: Color(0xff004481)),
                  Text('Tarjeta digital', style: TextStyle(color: Color(0xff004481),fontSize: 14)),
                  SizedBox(width: 30),
                  Text('Desactivar', style: TextStyle(color: Color(0xff004481),fontSize: 14)),
                  Icon(Icons.toggle_off, color: Colors.grey),

                ],
              )
            ],
          ),

          SizedBox(width: 35),

          TarjetaBlanca(),


        ],
      ),
    );
  }
}

class _ListViewHorizontalIconos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      height: 120,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [

          _IconosDelListView(texto: 'Oportunidades',icono: Icons.add,color: Color(0xfff7893a)),

          _IconosDelListView(texto: 'Tranferir',icono: Icons.swap_horiz ,color: Color(0xff4cabce)),

          _IconosDelListView(texto: 'Retiro sin tarjeta',icono: Icons.monetization_on_outlined,color: Color(0xff49d17c)),

          _IconosDelListView(texto: 'Pagar servicio',icono: Icons.settings,color: Color(0xff735fda)),
        ],
      ),
    );
  }
}

class _IconosDelListView extends StatelessWidget {

  final IconData icono;
  final String texto;
  final Color color;

  const _IconosDelListView({ this.icono, this.texto, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: color
            ),
            child: Icon(icono, size: 30, color: Colors.white),
          ),
          SizedBox(height: 7),
          Text(texto, style: TextStyle(fontSize: 13))
        ],
      );
  }
}

class _TarjetaBlancaHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 240,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('TUS CUENTAS', style: TextStyle(fontSize: 17, color: Color(0xff004481), fontWeight: FontWeight.bold)),
                      Icon(Icons.more_horiz, size: 30, color: Color(0xff9CAFC1))
                    ],
                  ),
                  SizedBox(height: 20),

                  _CuentaHeader(texto: '001ah7297',subtexto: '*37265',monto: '\$20,000'),
                  SizedBox(height: 10),

                  Divider(),
                  
                  SizedBox(height: 10),

                  _CuentaHeader(texto: '001ah7246',subtexto: '*37264',monto: '\$158,000'),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CuentaHeader extends StatelessWidget {
  
  final String texto;
  final String subtexto;
  final String monto;
  
  const _CuentaHeader({ this.texto, this.subtexto, this.monto });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(texto, style: TextStyle(fontSize: 17, color: Color(0xff1873b9))),
            SizedBox(height: 3),
            Text(subtexto, style: TextStyle(fontSize: 15, color: Color(0xff9CAFC1))),
          ],
        ),
        SizedBox(width: 20),
        Text(monto, style: TextStyle(fontSize: 20, color: Color(0xff1873b9), fontWeight: FontWeight.bold)),

        Icon(Icons.arrow_forward_ios, size: 17, color: Color(0xff9CAFC1))

      ],
    );
  }
}

class _AppBarCustomHome extends StatelessWidget {

  final Widget widget;
  final double size;
  
  const _AppBarCustomHome({ this.widget, this.size });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: size,
      child: widget
    );
  }
}

