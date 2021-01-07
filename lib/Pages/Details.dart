import 'package:diseno3_bbva/Widgets/AppCustom.dart';
import 'package:diseno3_bbva/Widgets/HeaderHome.dart';
import 'package:flutter/material.dart';


class DetailsAccountPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Color(0xffDCE9EF),
      body: Column(
            children: [

            Stack(
              children: [

                  HeaderHome(color: Colors.white),

                  AppBarCustom(widget: Icon(Icons.arrow_back, color: Color(0xff004481), size: 35), size: 20),

                  AppBarCustom(widget: Text('Cuenta *72985', style: TextStyle(fontSize: 20, color: Color(0xff004481), fontWeight: FontWeight.bold)), size: MediaQuery.of(context).size.width * 0.35, top: 60,),

                  Positioned(
                    top: 50,
                    right: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('Assets/perfil.png'),
                      maxRadius: 16
                    )
                  ),
              
                  _TarjetaAzulHeader()
              ],
            ),

            _Servicios(),

            SizedBox(height: 15),

            _DetallesMovimientos()

         ],
       )
     );
  }
}

class _DetallesMovimientos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(left: 30, top: 30, right: 30),
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ÚTILMOS MOVIMIENTOS', style: TextStyle(fontSize: 17, color: Color(0xff004481), fontWeight: FontWeight.bold)),
                Icon(Icons.search, color: Color(0xff9CAFC1))
              ],
            ),

            SizedBox(height: 15),

            _DetallesMovimientosContainer(titulo: 'Su pago en efectivo',subtitulo: 'Movimiento BBVA' ,colorMonto: Color(0xff61bf85),monto: '+\$1,600.00',),

            _DetallesMovimientosContainer(titulo: 'Enviado Interlank',subtitulo: 'Movimiento interbancario' ,colorMonto: Colors.red,monto: '-\$1,600.00',),

            Text('6 enero', style: TextStyle(fontSize: 17, color: Color(0xff004481), fontWeight: FontWeight.bold)),

            _DetallesMovimientosContainer(titulo: 'Su pago en efectivo',subtitulo: 'Movimiento BBVA' ,colorMonto: Color(0xff61bf85),monto: '+\$1,600.00',),
            
            _DetallesMovimientosContainer(titulo: 'Enviado Interlank',subtitulo: 'Movimiento interbancario' ,colorMonto: Colors.red,monto: '-\$1,600.00',),
          ],
        ),
      )
    );
  }
}

class _DetallesMovimientosContainer extends StatelessWidget {

  final Color colorMonto;
  final String titulo;
  final String subtitulo;
  final String dia;
  final String monto;
  
  const _DetallesMovimientosContainer({ this.colorMonto, this.titulo, this.subtitulo, this.dia, this.monto });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      height: 60,
      width: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( titulo, style: TextStyle(fontSize: 15, color: Color(0xff004481))),
              Text(monto, style: TextStyle(fontSize: 15, color: colorMonto)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(subtitulo, style: TextStyle(fontSize: 11, color: Color(0xff9CAFC1))),
              Text('Hoy', style: TextStyle(fontSize: 11, color: Color(0xff9CAFC1))),
            ],
          )
        ],
      ),
    );
  }
}

class _Servicios extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.credit_card, color: Color(0xff004481)),
                  Text('Detalle de tarjetas', style: TextStyle(color: Color(0xff004481),fontSize: 14)),
                  SizedBox(width: 40),
                  Text('Apagar tarjeta', style: TextStyle(color: Color(0xff004481),fontSize: 14)),
                  Icon(Icons.toggle_off, color: Colors.grey),
                ],
              ),
            ),

             Flexible(
              child: ListView(
                padding: EdgeInsets.all(15),
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [

                  _IconosDelListView(texto: 'Pagar servicio',icono: Icons.shop_outlined,color: Color(0xff3767f0)),

                  _IconosDelListView(texto: 'Tranferir',icono: Icons.swap_horiz ,color: Color(0xff4cabce)),

                  _IconosDelListView(texto: 'Retiro sin tarjeta',icono: Icons.monetization_on_outlined,color: Color(0xff49d17c)),

                  _IconosDelListView(texto: '6 más',icono: Icons.more_horiz,color: Color(0xff004481)),
                ],
            ),
             ),
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
          Text(texto, style: TextStyle(fontSize: 12))
        ],
      );
  }
}

class _TarjetaAzulHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 125,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
            color: Color(0xff004481),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
              children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('Assets/logo.png', height: 50),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:20.0),
                        child: Icon(Icons.more_horiz, color: Colors.white, size: 35),
                      )
                    ],
                  ),

                  Text('\$20,000.00', style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(height: 15),
                  Text('Saldo disponible', style: TextStyle(fontSize: 14, color: Colors.white)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      
                      Text('001ah7298', style: TextStyle(fontSize: 16, color: Colors.white)),

                      Image.asset('Assets/visa.png', height: 60),

                    ],
                  )
              ],
          ),
        ),
      ),
    );
  }
}