import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top:30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  _AppBarLogin(),

                  SizedBox(height: 40),

                  _Perfiles(),

                  SizedBox(height: 30),

                  _TextoCustom(titulo: 'Hola, Frave',size:  28,color:  Color(0xff004481),bold: FontWeight.bold ),

                  SizedBox(height: 5),
                  
                  _TextoCustom(titulo: '¿Qué tal tu día hoy?',size:  16,color:  Color(0xff9CAFC1) ),
                  
                  SizedBox(height: 35),

                  _TextFieldPassword(),

                  SizedBox(height: 10),

                  _OlvideContrasena(),

                  SizedBox(height: 40),

                  _RowCustom(texto: 'Token móvil', icon: Icons.verified_user_outlined ),

                  SizedBox(height: 30),

                  _Operacion(),

                  SizedBox(height: 30),

                  _RowCustom(texto: 'Línea BBVA', icon: Icons.phone_in_talk_outlined ),
                  
                  SizedBox(height: 36),

                  _LineaBottom()

               ],
            ),
            ),
            
       ),
        ),
     );
  }
}

class _TextoCustom extends StatelessWidget {

  final double size;
  final String titulo;
  final Color color;
  final FontWeight bold;
  
  const _TextoCustom({ this.size, this.titulo, this.color, this.bold });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(titulo, style: TextStyle(fontSize: size , color: color , fontWeight: bold)),
    );
  }
}

class _LineaBottom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: double.infinity,
      color: Color(0xff004481),
    );
  }
}

class _Operacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
           Icon(Icons.qr_code_scanner_outlined, color: Color(0xff004481), size: 40),
           SizedBox(width: 10),
           Column(
             children: [
                Text( 'Operación', style: TextStyle(fontSize: 16, color: Color(0xff004481), fontWeight: FontWeight.w500)),
                Text( 'QR + CoDi', style: TextStyle(fontSize: 16, color: Color(0xff004481), fontWeight: FontWeight.w500))
             ],
           )
        ],
      ),
    );
  }
}

class _RowCustom extends StatelessWidget {

  final IconData icon;
  final String texto;
  
  const _RowCustom({ this.icon, this.texto });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(icon, color: Color(0xff004481), size: 40),
          SizedBox(width: 10),
          Text( texto, style: TextStyle(fontSize: 16, color: Color(0xff004481), fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}

class _OlvideContrasena extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: FlatButton(
        child: Text('Olvidé mi contraseña', style: TextStyle(fontSize: 15, color: Color(0xff004481), fontWeight: FontWeight.w400)),
        onPressed: () => Navigator.pushNamed(context, 'home'),
      ) 
    );
  }
}

class _TextFieldPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        style: TextStyle(color: Color(0xff004481), fontSize: 18),
        
        decoration: InputDecoration(
          labelText: 'Contraseña',
          labelStyle: TextStyle(color: Color(0xff004481), fontSize: 15),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff004481))),
          suffixIcon: Icon(Icons.visibility_off_outlined, color: Color(0xff004481))
        ),
      ),
    );
  }
}

class _Perfiles extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('Assets/perfil.png'),
            maxRadius: 50,
          ),
          SizedBox(width: 15),
          CircleAvatar(
            backgroundColor: Color(0xff004481),
            maxRadius: 18,
            child: Icon(Icons.swap_horiz, color: Colors.white),
          )
        ],
      ),
    );
  }
}

class _AppBarLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        
        children: [

            IconButton(
              icon: Icon(Icons.sort, size: 35, color: Color(0xff004481)),
              onPressed: null
            ),
            SizedBox(width: 65),
            Image.asset('Assets/logo2.png')
        ],
      ),
    );
  }
}

