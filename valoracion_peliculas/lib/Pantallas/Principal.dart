import 'package:flutter/material.dart';
import 'package:valoracion_peliculas/Pantallas/Menu.dart';
import 'package:valoracion_peliculas/Pantallas/Registro.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(),
    );
  }

  Widget Login() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Usuario(),
        Password(),
        SizedBox(
          height: 10,
        ),
        botones()
      ],
    );
  }

  Widget Usuario() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextFormField(
        autofocus: true,
        autocorrect: true,
        decoration: InputDecoration(
          hintText: "Usuario",
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          prefixIcon: const Icon(
            Icons.email,
          ),
        ),
      ),
    );
  }

  Widget Password() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextFormField(
        autofocus: true,
        autocorrect: true,
        decoration: InputDecoration(
          hintText: "Password",
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          prefixIcon: const Icon(Icons.password),
        ),
      ),
    );
  }

  Widget botones() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[botonAceptar(), botonRegistrarse()],
    );
  }

  Widget botonAceptar() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Menu()));
        },
        child: const Text("Ingresar"),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.blue,
          shadowColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
          side: BorderSide(color: Colors.blue, width: 1),
          shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }

  Widget botonRegistrarse() {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Registro()));
          },
          child: const Text("Registrarse"),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.green,
            shadowColor: Colors.white,
            elevation: 0,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
            side: BorderSide(color: Colors.green, width: 1),
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          )),
    );
  }
}
