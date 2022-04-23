import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:valoracion_peliculas/Pantallas/Principal.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    runApp(myapppeliculas());
  });
}

class myapppeliculas extends StatefulWidget {
  myapppeliculas({Key? key}) : super(key: key);

  @override
  State<myapppeliculas> createState() => _myapppeliculasState();
}

List Usuarios = [];

class _myapppeliculasState extends State<myapppeliculas> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getUsuarios();
  }

  void getUsuarios() async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection("usuarios");

    QuerySnapshot users = await collectionReference.get();

    if (users.docs.length != 0) {
      for (var docs in users.docs) {
        Usuarios.add(docs.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}
